class BaseCacher

  def initialize(object, options={})
    @object = object
    @options = options
  end

  def live_value
    # The (expensive) query that returns a "live" value.
    raise NotImplementedError, "Find me in #{__FILE__}"
  end

  def ttl
    # The time, in seconds, when the cached value should expire
    # for example `1.week.to_i`.
    raise NotImplementedError, "Find me in #{__FILE__}"
  end

  def converter
    # Not required.
    # Symbol representation of a method to run after the
    # value is returned from Redis.
    # For example, `:to_i`
    # Does not need to be implemented, but results may be
    # in unexpected types. TODO Fix this later, getting the
    # type of the original live_value to begin with.
    nil
  end

  def update_cache_condition
    # Not required.
    # A conditional to determine w
    # Returning `true` will update the cache. Returning `false` will
    # use the cached value, unless the cached value is expired.
    false
  end

  def value
    # This could use some refactoring, but what it does, is:
    # if the cache somehow ends up being nil, this will revert
    # to the live value.
    return_value = internal_value
    if return_value.nil?
      expire!
      return_value = internal_value
    end
    return_value
  end

  def internal_value
    if expired? || update_cache_condition
      # TODO: Factor this out into a method
      Rails.logger.debug "Image #{@object.id} retrieved live"
      value = live_value
      cache.hset hash_key, hash_field, value
      unexpire!
    else
      # TODO: Factor this out into a method
      Rails.logger.debug "Image #{@object.id} retrieved from cache. Clear with hdel #{hash_key} #{hash_field}"
      value = cache.hget hash_key, hash_field
    end
    converter ? value.send(converter) : value
  end

  def cache
    DataCache
  end

  def hash_key
    # The name of the hash.
    @options.fetch(:hash_key) { self.class.to_s.underscore }
  end

  def hash_field
    field_suffix = @options.fetch(:field_suffix) { nil }
    "#{@object.id}#{field_suffix}"
  end

  def clear_cache
    cache.hdel hash_key, hash_field
    expire!
  end

  def expired?
    cache.get(ttl_key).nil?
  end

  def expire!
    cache.del ttl_key
  end

  def unexpire!
    cache.set ttl_key, ttl.seconds.from_now
    cache.expire ttl_key, ttl
  end

  def expires_at
    Time.parse cache.get(ttl_key)
  end

  def expires_in
    (expires_at - Time.now).to_i
  end

  def ttl_key
    "#{self.class.to_s.underscore}_lock_#{@object.id}"
  end

end
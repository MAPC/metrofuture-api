module DataCache
  REDIS_URL = ENV["REDISCLOUD_URL"] || ENV["REDIS_URL"] || 'redis://127.0.0.1:6379'
  def self.data
    @data ||= Redis.new(url: REDIS_URL)
  end

  # TODO Delegate the calls to data

  def self.get(key)
    data.get(key)
  end

  def self.set(key, value)
    data.set(key, value)
  end

  def self.hget(key, field)
    data.hget(key, field)
  end

  def self.hset(key, field, value)
    data.hset(key, field, value)
  end

  def self.hkeys(key)
    data.hkeys(key)
  end

  def self.del(key, field)
    data.del(key, field)
  end

  def self.expire(key, seconds)
    data.expire(key, seconds)
  end

  def self.method_missing(method_name, *args, &block)
    data.send(method_name, args, block)
  end
end

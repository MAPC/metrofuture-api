class ImageCacher < BaseCacher
  def live_value
    style = @options.fetch(:style) { nil }
    @object.resize(style)
  end

  def update_cache_condition
    last_modified = @object.project.read_attribute(:ModifiedOn)
    last_modified > expires_at
  end

  def ttl
    1.week.to_i
  end

  def converter
    # :to_bn
  end

end
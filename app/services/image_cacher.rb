class ImageCacher < BaseCacher
  def live_value
    dims = @options.fetch(:hash_key) { nil }
    if dims
      d = dims.split("x").map(&:to_i) # "300x200" => [300, 200]
      resize(d[0], d[1])
    else
      @object.data
    end
  end

  def update_cache_condition
    last_modified = @object.project.read_attribute(:ModifiedOn)
    last_modified < expires_at
  end

  def ttl
    1.week.to_i
  end

  private

    def resize(x, y)
      image_data    = Magick::Image.read_inline(@object.data).first
      resized_image = image_data.resize_to_fill(x, y)
      resized_body  = Base64.encode64 resized_image.to_blob
      "data:#{ @object.mime_type };base64,#{ resized_body }"
    end


end
class Image < ActiveRecord::Base
  self.table_name = "AnnotationBase"
  self.primary_key = "AnnotationId"

  belongs_to :project, foreign_key: "ObjectId"

  default_scope { 
    where("IsDocument" => true)       # Is an image
    .where("ObjectTypeCode" => 10056) # Associated to a project
  }

  alias_attribute :mime_type, "MimeType"
  alias_attribute :body, "DocumentBody"

  def data
    "data:#{ mime_type };base64,#{ body }"
  end

  def cache
    ImageCache.redis
  end

  def resize(x,y)
    i = Magick::Image.read_inline(data)[0]
    resized_image  = i.resize_to_fill( x, y )
    new_image_data = Base64.encode64 resized_image.to_blob
    "data:#{ mime_type };base64,#{ new_image_data }"
  end

  def full
    get_image_data 1200, 800
  end

  def small
    get_image_data 300, 200
  end

  def get_image_data(x, y)
    dims = "#{x}x#{y}" # i.e. "300x200"
    logger.debug "(Redis) Trying to get cached image data for image #{self.id}"
    image_data = cache.hget(dims, self.id)
    logger.debug "(Redis) Successfully retrieved cache for image #{self.id}" if image_data
    if image_data.nil?
      logger.debug "(Redis) Attempting to set cache for image #{self.id}"
      image_data = resize(x, y)
      set  = cache.hset(dims, self.id, image_data)
      logger.debug "(Redis) Successfully set cache data for image #{self.id}." if set
    end
    image_data
  end

  def clear_cache(x,y)
    dims = "#{x}x#{y}" # i.e. "300x200"
    cache.hkeys(dims).each {|key| cache.hdel key }
  end

end
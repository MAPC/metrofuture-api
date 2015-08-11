class Image < ActiveRecord::Base
  self.table_name = "AnnotationBase"
  self.primary_key = "AnnotationId"

  belongs_to :project, foreign_key: "ObjectId"

  default_scope {
    where("IsDocument" => true)       # Is an image
    .where("ObjectTypeCode" => 10056) # Associated to a project
    .order("ModifiedOn").reverse_order # Most recent image last
  }

  alias_attribute :filename,  "FileName"
  alias_attribute :mime_type, "MimeType"
  alias_attribute :body, "DocumentBody"

  # TODO This shouldn't be in the model because it's
  # routing logic, not model logic. Perhaps a mixin
  # of some sort. Maybe look at Paperclip's design.
  def url(style=nil)
    base_path = "/images/#{filename}"
    style ? base_path << "?style=#{style}" : base_path
  end

  def content(style=nil)
    ImageCacher.new(self, hash_key: hash_key(style), style: style).value
  end

  def hash_key(style)
    style || "nil"
  end

  def binary(style=nil)
    Base64.decode64 content(style)
  end

  def data(style=nil)
    "data:#{ mime_type };base64,#{ content(style) }"
  end

  def raw_data
    "data:#{ mime_type };base64,#{ body }"
  end

  def styles
    {
      small:  [ 300, 200],
      medium: [ 600, 400],
      large:  [1200, 800]
    }
  end

  def resize(style)
    if style
      dimensions = styles[style.to_sym]
      base64 = Magick::Image.read_inline(raw_data).first
      resized_image = base64.resize_to_fill(dimensions.first, dimensions.last)
      Base64.encode64 resized_image.to_blob
    else
      body
    end
  end

end
class Image < ActiveRecord::Base
  self.table_name = "AnnotationBase"
  self.primary_key = "AnnotationId"

  belongs_to :project, foreign_key: "ObjectId"

  default_scope {
    where("IsDocument" => true)       # Is an image
    .where("ObjectTypeCode" => 10056) # Associated to a project
  }

  alias_attribute :filename,  "FileName"
  alias_attribute :mime_type, "MimeType"
  alias_attribute :body, "DocumentBody"

  def data
    "data:#{ mime_type };base64,#{ body }"
  end

  # TODO This shouldn't be in the model because it's
  # routing logic, not model logic.
  def url(style=nil)
    base_path = "/images/#{filename}"
    style ? base_path << "?style=#{style}" : base_path
  end

  def content(style=nil)
    style ? resize_image( styles[style.to_sym] ) : body
  end

  def styles
    {
      small:  [ 300, 200],
      medium: [ 600, 400],
      large:  [1200, 800]
    }
  end

  def resize_image(dimensions)
    # Not a fan of this code, the way it goes to text here
    # and then in the ImageCacher goes back to Array.
    dims = "#{dimensions.first}x#{dimensions.last}" # i.e. "300x200"
    @image ||= ImageCacher.new(self, hash_key: dims).value
  end

end
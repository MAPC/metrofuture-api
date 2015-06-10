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

  def small
    i = Magick::Image.read_inline(data).first

    i = i.resize_to_fill( 300, 200 ) # 475, 325
    new_body = Base64.encode64 i.to_blob
    "data:#{ mime_type };base64,#{ new_body }"
  end

end

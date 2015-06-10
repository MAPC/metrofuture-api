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
    "data:#{ mime_type };base64,#{body}"
  end

end

require 'jsonapi-serializers'
class ApplicationSerializer
  include JSONAPI::Serializer

  def links
    { href: "lol" }
  end
end

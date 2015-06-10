require 'oat/adapters/json_api'

class ApplicationSerializer < Oat::Serializer
  include ActionDispatch::Routing::UrlFor
  include Rails.application.routes.url_helpers
  def self.default_url_options
    Rails.application.routes.default_url_options
  end
  adapter Oat::Adapters::JsonAPI
end

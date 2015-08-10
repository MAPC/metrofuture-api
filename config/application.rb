require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MetrofutureServer
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    DEFAULT_DEBUG_CORS = false
    DEFAULT_PRODUCTION_ORIGIN = 'projects.metrofuture.org'

    ALLOW_ALL   = '*'
    KNOWN_HOSTS = ENV.fetch('KNOWN_HOSTS') { DEFAULT_PRODUCTION_ORIGIN }
    DEBUG_CORS  = ENV.fetch('DEBUG_CORS')  { DEFAULT_DEBUG_CORS }
    ORIGINS     = (Rails.env == 'production') ? KNOWN_HOSTS : ALLOW_ALL

    config.middleware.insert_before 0, "Rack::Cors", debug: DEBUG_CORS, logger: (-> { Rails.logger }) do
      allow do
        origins  ORIGINS.split(',')
        resource ALLOW_ALL, headers: :any, methods: :get
      end
    end

  end
end
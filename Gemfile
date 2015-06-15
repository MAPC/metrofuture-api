source 'https://rubygems.org'

ruby '2.1.5'

gem 'rails', '4.1.0'
gem 'rails-api'

gem 'activerecord-sqlserver-adapter', '4.1.0'
gem 'tiny_tds'
gem 'pg' # For test database
# gem 'lazy_columns', github: 'jorgemanrubia/lazy_columns' # Lazy-load large columns

# JSON API
gem 'jsonapi-serializers' # Serialize with JSONAPI.org standard
gem 'kaminari'            # Pagination
gem 'api-pagination'      # Paginates API in headers
gem 'rmagick'             # Image processing
gem 'rack-cors', require: 'rack/cors' # CORS Headers

# Utilities
gem 'foreman'
gem 'naught'               # Helps build null objects
gem 'stamp', '0.6.0'       # Convenient timestamping
gem 'wannabe_bool'         # To convert boolean-ish values to booleans


group :development do
  gem 'spring'            # Keeps environment in background
  gem 'better_errors'     # Clearer error messages
  gem 'binding_of_caller' # Error message REPL & more
  gem 'rails-erd'         # Output data model diagrams
end

group :development, :test do
  gem 'rspec-rails',        '~> 2.14.0' # Stick to a specific version
  gem 'spring-commands-rspec', '~> 1.0'
  gem 'factory_girl_rails',    '~> 4.0' # Build factories quickly
  gem 'database_cleaner'
  gem 'guard-rspec',            '4.3.1' # Autorun tests and keep Rails loaded
  gem 'faker'                           # Generate fake data
  gem 'vcr',                   '~> 2.4' # Record API calls for tests
  gem 'childprocess',          '~> 0.5' # Fix a version conflict
  gem 'webmock', '~> 1.8.4', require: false # Faking requests (supports VCR)
  gem 'minitest'                        # Unclear why we use this
end

group :production do
  gem 'puma' # App server
end

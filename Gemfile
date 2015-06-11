source 'https://rubygems.org'

gem 'rails', '4.1.0'
gem 'rails-api'

gem 'activerecord-sqlserver-adapter', '4.1.0'
gem 'tiny_tds'
gem 'pg' # For test database
# gem 'lazy_columns', github: 'jorgemanrubia/lazy_columns' # Lazy-load large columns

gem 'jsonapi-serializers' # JSON API
gem 'api-pagination'
gem 'rmagick'  # Image processing
gem 'kaminari' # Pagination
gem 'rack-cors', require: 'rack/cors'

# Utilities
gem 'foreman'
gem 'naught'               # Helps build null objects
gem 'stamp', '0.6.0'       # Convenient timestamping

# gem 'legacy_data'

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

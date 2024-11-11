source "https://rubygems.org"

# Core Rails gem for API-only mode
gem "rails", "~> 8.0.0"

# Database
gem "pg", "~> 1.1"  # PostgreSQL adapter for ActiveRecord

# Web Server
gem "puma", ">= 5.0"

# Caching and Queue Adapters
gem "solid_cache"   # Database-backed cache for ActiveRecord
gem "solid_queue"   # Database-backed queue for Active Job
gem "solid_cable"   # Database-backed Action Cable adapter

# Speed up app boot time
gem "bootsnap", require: false

# Deployment
gem "kamal", require: false  # For deploying with Docker containers

# Asset Caching/Compression and X-Sendfile for Puma
gem "thruster", require: false

# Timezone support for Windows platforms
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Authentication
gem "bcrypt", "~> 3.1.7"   # Secure password hashing
gem "jwt", "~> 2.5"        # JSON Web Token for handling authentication tokens

# Pagination
gem "pagy", "~> 5.10.1"    # Fast pagination helper

# JSON Serialization
gem "active_model_serializers", "~> 0.10.0"  # Customize JSON responses for APIs

# API Documentation
gem "rswag", "~> 3.0"      # Swagger documentation for Rails APIs

# CORS for handling requests from different origins (uncomment if needed)
# gem "rack-cors"

# Development and Testing
group :development, :test do
  # Debugging tool for development
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Security vulnerability scanner
  gem "brakeman", require: false

  # Static analysis and style guide enforcement for Rails
  gem "rubocop-rails-omakase", require: false

  # Testing tools
  gem "rspec-rails", "~> 6.0.0"        # RSpec for testing
  gem "factory_bot_rails", "~> 6.2"    # Fixtures for testing
  gem "faker", "~> 3.2"                # Generate fake data for testing
  gem "shoulda-matchers", "~> 5.0"     # Matchers for testing Rails models and controllers
end

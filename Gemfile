source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby "2.3.1"
gem 'rails', '5.0.0'
gem 'rubocop', '~> 0.39.0'
gem 'ratyrate'
gem 'rails-controller-testing'
gem 'stripe'
gem "brakeman", :require => false
gem 'angularjs-rails'
gem 'dalli'
gem 'redis-rails'
gem 'jquery-turbolinks', '~> 2.1'
gem 'friendly_id', '~> 5.1.0'
gem 'stripe-ruby-mock', '~> 2.3.0', :require => 'stripe_mock'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Paginate gem for comment secrion
gem 'will_paginate', '~> 3.1.0'
# Paginate bootstrap styling
gem 'will_paginate-bootstrap'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Login/Signup gem
gem 'devise'
# CanCanCan
gem 'cancancan', '~> 1.10'
gem 'puma', '~> 3.0'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.4'
  gem "factory_girl_rails", "~> 4.0"
  gem 'database_cleaner'
  gem 'faker'
  gem 'guard'
  gem 'guard-rspec', require: false
  # gem 'spork-rails', '~> 4.0', git: 'https://github.com/sporkrb/spork-rails.git'
  gem 'guard-spork'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

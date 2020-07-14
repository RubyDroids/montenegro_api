source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'tzinfo-data', '>= 1.2016.7'  # Don't rely on OSX/Linux timezone data

gem 'sqlite3', '~> 1.4'
gem 'puma', '>= 4.3.3', github: 'puma/puma'

gem 'webpacker', '~> 5.1.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'image_processing', '~> 1.2'
gem 'mini_magick'

gem 'rails-i18n'
gem 'route_translator'
gem 'friendly_id'
gem 'countries'
gem 'active_hash'

gem 'rest-client'

# Use Active Model has_secure_password
#gem 'bcrypt', '~> 3.1.7'
#gem 'devise'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'foreman'
  gem 'web-console'
  gem 'pry'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'amazing_print'
  gem 'listen'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
  gem 'meta_request'

  # Code critics
  gem 'rubocop', '>= 0.72', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'scss_lint', '~> 0.50', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end
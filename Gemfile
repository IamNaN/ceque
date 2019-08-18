source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

gem 'bootstrap'

group :development, :test do
  gem 'puma'
  gem 'byebug'
  gem 'rspec-rails'
  gem 'webdrivers', '~> 4.0'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman', require: false
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'launchy'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'simplecov'
end


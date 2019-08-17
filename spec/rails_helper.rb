ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../dummy/config/environment.rb', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'spec_helper'
require 'factory_bot_rails'
require 'byebug'
require 'rspec/rails'
require 'capybara/rspec'
require 'webdrivers/chromedriver'

Capybara.javascript_driver = :selenium_chrome_headless
Capybara.asset_host = 'http://localhost:3000' 

Dir[Rails.root.join('../support/**/*.rb')].each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end

require 'simplecov'
SimpleCov.start

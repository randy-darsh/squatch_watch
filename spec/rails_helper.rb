require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'pry'
require 'database_cleaner'
require 'capybara/rails'

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/cassettes"
  config.hook_into :webmock
  config.filter_sensitive_data('<>') { ENV["USER_TOKEN"]}
end

ActiveRecord::Migration.maintain_test_schema!
DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.before(:all) do
    DatabaseCleaner.clean
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end

def stub_omniauth
  # first, set OmniAuth to run in test mode
  OmniAuth.config.test_mode = true
  # then, provide a set of fake oauth data that
  # omniauth will use when a user tries to authenticate:
  OmniAuth.config.mock_auth[:google] = OmniAuth::AuthHash.new({
    provider: "google",
    uid: "12345678910",
    info: {
      email: "rspringer47@gmail.com",
      first_name: "Randy",
      last_name: "Springer"
    },
    credentials: {
      token: "abcdefg12345",
      refresh_token: "12345abcdefg",
      expires_at: DateTime.now,
    }
  })
end

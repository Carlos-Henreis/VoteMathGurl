ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
include FactoryBot::Syntax::Methods

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: ['headless', 'disable-gpu', 'window-size=1366, 768'] }
  )

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: capabilities
  )
end

Capybara.always_include_port = false
Capybara.javascript_driver = :headless_chrome

class ActiveSupport::TestCase
  #include Capybara::Minitest::Assertions
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # Add more helper methods to be used by all tests here...
  self.use_transactional_tests = false
  Capybara.default_max_wait_time = 2
  FactoryBot.reload
end

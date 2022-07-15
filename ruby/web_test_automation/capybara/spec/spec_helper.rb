# frozen_string_literal: true

require 'capybara/rspec'
require 'webdrivers'

Webdrivers::Chromedriver.required_version = '102.0.5005.61'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
end

Capybara.configure do |capybara_config|
  capybara_config.run_server = false
  capybara_config.app_host   = 'https://www.amaysim.com.au/'
  capybara_config.default_max_wait_time = 60
  capybara_config.default_selector = :css
  capybara_config.save_path = './tmp'
  capybara_config.default_driver = :selenium # builtin firefox
end

def chrome_options
  opts = Selenium::WebDriver::Chrome::Options.new
  opts.add_argument('--no-sandbox')
  opts.add_argument('--disable-gpu')
  opts.add_argument('--disable-dev-shm-usage')
  opts.add_argument('--window-size=1400,1400')
  opts
end

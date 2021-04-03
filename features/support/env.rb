require 'cucumber'
require 'selenium-webdriver'
require 'capybara/dsl'

World Capybara::DSL
time = Time.now.to_s
time = DateTime.parse(time).strftime("%d_%m_%Y_%H_%M_%S")

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome,
                                 :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                                   'chromeOptions' => {
                                     'args' => ["--start-maximized"]
                                   }
                                 )
  )
end

Capybara.configure do |config|
  Capybara.current_driver = :selenium
  config.default_max_wait_time = 20
end

After do |scenario|
  take_screenshot(time, 'screenshots/test_failed') if scenario.failed?
  take_screenshot(time, 'screenshots/test_passed') if scenario.passed?
end

def take_screenshot(name_file, folder = 'screenshots/test_screens')
  file = "#{folder}/#{name_file}.png"
  FileUtils.mkdir_p(folder) unless File.exist?(folder)
  Capybara.page.driver.browser.save_screenshot(file)
end

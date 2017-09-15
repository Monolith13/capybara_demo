require 'rbconfig'
require 'cucumber/formatter/unicode'
require 'allure-cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
include AllureCucumber::DSL

# Paste your URL of website
$host = 'some.url'

Before do |scenario|
  Capybara.default_driver = :selenium
  Capybara.register_driver :selenium do |app|
    # For local debug launch in Firefox browser
    # This step required installed geckodriver
    #Capybara::Selenium::Driver.new(app, :browser => :firefox)

    # For local debug launch in Chrome browser
    # This step required installed chromedriver
    #Capybara::Selenium::Driver.new(app, :browser => :chrome)

    # For launch into docker
    Capybara::Selenium::Driver.new(:remote, :url => 'http://localhost:32769/wd/hub', :desired_capabilities => app)
  end
end

AllureCucumber.configure do |c|
  c.output_dir = "allure"
  c.clean_dir  = true
end

After do |scenario|
  if scenario.failed?
    begin
      Report.attach_screenshot(path)
    rescue
    end
  end
end
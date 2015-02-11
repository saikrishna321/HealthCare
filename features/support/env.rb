# This file provides setup and common functionality across all features.  It's
# included first before every test run, and the methods provided here can be
# used in any of the step definitions used in a test.  This is a great place to
# put shared data like the location of your app, the capabilities you want to
# test with, and the setup of selenium.
require 'rspec/expectations'
require 'selenium-webdriver'
require File.dirname(__FILE__) + '/../../features/repo/ids.rb'
require File.dirname(__FILE__) + '/common_helper.rb'
Dir[File.dirname(__FILE__) + '/../../features/pages/*.rb'].each do |file|
	puts file
	require file
end
BEGIN {
	$VERBOSE = nil
}

Before do |scenario|
	@@driver = Selenium::WebDriver.for :firefox
end


After do |scenario|
	@@driver.quit
end

@@login=Login.new
@@helper=Helpers.new



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

@@project_path=File.expand_path("../../../", __FILE__)
Before do |scenario|
	if ENV["BROWSER"] == "firefox"
		@@driver = Selenium::WebDriver.for :firefox
	elsif ENV["BROWSER"] == "chrome"
		@driver = Selenium::WebDriver.for :chrome
	elsif ENV["BROWSER"] == "safari"
		%x( rm ~/Library/Cookies/Cookies.binarycookies )
		%x( killall cookied )
		@@driver = Selenium::WebDriver.for :safari
	end

end


After do |scenario|
	unless File.directory?(@@project_path +'/screenshot/fail')
		FileUtils.mkdir_p(@@project_path+'/screenshot/fail')
	end
	if scenario.failed?
		screen_path=@@project_path+"/screenshot/fail/sc_#{Time.now.to_i}.png"
		@@driver.save_screenshot(screen_path)
		embed(screen_path, "image/png", "FailedScenario")
	end
	@@driver.quit
end

@@login=Login.new
@@helper=Helpers.new



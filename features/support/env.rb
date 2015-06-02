# This file provides setup and common functionality across all features.  It's
# included first before every test run, and the methods provided here can be
# used in any of the step definitions used in a test.  This is a great place to
# put shared data like the location of your app, the capabilities you want to
# test with, and the setup of selenium.
require 'rspec/expectations'
require 'selenium-webdriver'
require File.dirname(__FILE__) + '/../../features/repo/ids.rb'
require File.dirname(__FILE__) + '/common_helper.rb'
require File.dirname(__FILE__) + '/email.rb'
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
		screen_shot_name="screenshot/fail/sc_#{Time.now.to_i}.png"
		screen_path=@@project_path+'/'+screen_shot_name
		@@driver.save_screenshot(screen_path)
		embed(screen_shot_name, "image/png", "FailedScenario")
	end
	@@driver.quit
end

at_exit do
  puts 'Sending Email with Report'
   @@email.send_report(@@project_path+'/regression.html')
end

@@login=Login.new
@@helper=Helpers.new
@@email=Email.new



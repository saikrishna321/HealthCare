And(/^i navigate to register page$/) do
	@@login.click_sign_in
	@@login.click_register
end

When(/^i enter first name as "([^"]*)"$/) do |arg|
	sleep 2
	@@driver.find_element(:xpath,".//*[@ng-model='newUser.first_name']").send_keys arg
end

And(/^i enter last name as "([^"]*)"$/) do |arg|
	sleep 2
	@@driver.find_element(:xpath,".//*[@ng-model='newUser.last_name']").send_keys arg
end

And(/^i enter email id$/) do
	o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
	randomString = (0...8).map { o[rand(o.length)] }.join
	email_string=randomString + '@test.com'
	@@driver.find_element(:xpath,".//*[@ng-model='newUser.email']").send_keys email_string
	sleep 3
end

And(/^i enter phone number as "([^"]*)"$/) do |arg|
	@@driver.find_element(:xpath,"	.//*[@id='phone']").send_keys arg
	sleep 3
end

def send_text(xpath,arg)
	sleep 2
	@@driver.find_element(:xpath,xpath).send_keys arg
end

And(/^i enter the password "([^"]*)"$/) do |arg|
	send_text(".//*[@ng-model='newUser.password']",arg)
end

And(/^i enter confirm password "([^"]*)"$/) do |arg|
	send_text(".//*[@id='confirm']",arg)
end


And(/^i enter organisation as "([^"]*)"$/) do |arg|
	send_text(".//*[@ng-model='newUser.organization_name']",arg)
end


And(/^i click on Register button$/) do
	sleep 1.8
	@@driver.find_element(:xpath, "html/body/div[4]/div/div/form/div[3]/button[2]").click
	sleep 4
end

And(/^i enter website$/) do
	@@driver.find_element(:xpath,".//*[@id='website']").send_keys "sasasa"
end
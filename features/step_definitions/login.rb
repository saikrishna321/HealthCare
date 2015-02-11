Given(/^i'm on Global Lab Homepage$/) do
   @@login.open_url LIVE_URL
   @@helper.wait_for_elementonscreen_by_xpath("//button[@type='button']")
  sleep 2
end

When(/^i login into the application$/) do
  @@login.click_sign_in
  credentials=ENV['LOGIN'].split(':')
  @@login.enter_credentials(credentials[0],credentials[1])
  @@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[1]/nav/div/div/ul[2]/li[1]/div/a")
end

Then(/^i should see the user logged$/) do
  expected=@@driver.find_element(:css,LOGGED_IN_USERNAME).text
  expect(USERNAME).to eq(expected)
end

When(/^i login into the application with username as "([^"]*)" and password as "([^"]*)"$/) do |username, password|
  step 'i click on Sign in button'
  @@login.enter_credentials(username,password)
end

Then(/^i should see the validation message "([^"]*)"$/) do |arg|
  expected=@@driver.find_element(:css,LOGIN_VALIDATION).text
  expect(arg).to eq(expected)
end

And(/^i click on Sign in button$/) do
  @@login.click_sign_in
end

When(/^i click on cancel button$/) do
  @@driver.find_element(:xpath,LOGIN_CANCEL_BUTTON).click
  sleep 0.8
end

Then(/^i should not see the login module$/) do
   actual=@@helper.is_element_present('html/body/div[3]/div/div')
   expect(actual).to be false
end

And(/^i logout from the application$/) do
  @@login.logout
end

And(/^i enter valid credentials$/) do
  credentials=ENV['LOGIN'].split(':')
  @@login.enter_credentials(credentials[0],credentials[1])
end

And(/^i logout from the application if user is logged in$/) do
  page_screen=@@driver.page_source
  logged_in=page_screen.include? USERNAME
  if logged_in
    step 'i logout from the application'
  else
    puts 'User is logged out'
  end
end
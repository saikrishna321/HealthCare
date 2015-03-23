When(/^i click on Browse button$/) do
	@@helper.click_by_xpath(BROWSE_BUTTON)
	sleep 1.3
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div[1]/gl-innovation-card/div/div/h4")
end

When(/^i click on Submit Button$/) do
	@@helper.click_by_xpath(SUBMIT_BUTTON)
	sleep 1.3
end

When(/^i click on About Button$/) do
	@@helper.click_by_xpath(ABOUT_BUTTON)
	sleep 1.3
end

And(/^i click on Submit Innovations$/) do
	@@helper.click_by_xpath(SUBMIT_INNOVATION)
	sleep 1.3
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[1]/h1")
end

When(/^i click on Terms and condition$/) do
	@@helper.click_by_xpath(TERMS_AND_CONDITION)
  @@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div/div/div/h3")
end

When(/^i click on Privacy$/) do
	@@helper.click_by_xpath(PRIVACY)
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div/div/div/h3")
end


When(/^i click on Contact/) do
	@@helper.click_by_xpath(CONTACT)
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div/div/div/h3")
end
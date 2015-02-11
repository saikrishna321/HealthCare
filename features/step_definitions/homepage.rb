When(/^i click on Browse button$/) do
   @@helper.click_by_xpath(BROWSE_BUTTON)
end

When(/^i click on Submit Button$/) do
	@@helper.click_by_xpath(SUBMIT_BUTTON)
	sleep 1.3
end

When(/^i click on About Button$/) do
	@@helper.click_by_xpath(ABOUT_BUTTON)
	sleep 1.3
end
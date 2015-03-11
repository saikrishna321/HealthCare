And(/^i should see "([^"]*)"$/) do |arg|
	page_screen=@@driver.page_source
	actual=page_screen.include? arg
	expect(actual).to be true
end

Then(/^i should not see "([^"]*)"$/) do |arg|
	sleep 5
	page_screen=@@driver.page_source
	actual=page_screen.include? arg
	expect(actual).to be false
end
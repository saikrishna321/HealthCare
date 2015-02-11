And(/^i should see "([^"]*)"$/) do |arg|
	page_screen=@@driver.page_source
	actual=page_screen.include? arg
	expect(actual).to be true
end
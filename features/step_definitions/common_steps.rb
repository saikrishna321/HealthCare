Given(/^i open chrome browser$/) do
	puts "Opened chrome browser"
	@@driver.navigate.to "http://google.com"
	element = @@driver.find_element(:name, 'q')
	element.send_keys "Hello WebDriver!"
	element.submit

	puts @@driver.title
end

And(/^i should see "([^"]*)"$/) do |arg|
	page_screen=@@driver.page_source
	actual=page_screen.include? arg
	expect(actual).to be true
end
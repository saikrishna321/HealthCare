Then(/^i should see innovations$/) do
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div[1]/gl-innovation-card/div/div/h4")
	total_innovations= @@driver.find_elements(:css, ".col-xs-12.col-sm-6.col-md-4.ng-scope").size
	total_innovations.times do
		@@i||=1
		sleep 0.2
		puts @@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div["+@@i.to_s+"]/gl-innovation-card/div/div/h4").text
		@@i+=1
	end
end

And(/^i execute a search as "([^"]*)"$/) do |arg|
	@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[1]/div/div[1]/form/div/input").send_keys arg
	sleep 1
end

Then(/^i should see innovations "([^"]*)"$/) do |arg|
	actual=@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div/gl-innovation-card/div/div/div/h3").text
	expect(actual).to eq(arg)
end

And(/^check my saved innovations$/) do
	sleep 0.8
	@@helper.click_by_xpath(MY_SAVED_INNOVATION)
	sleep 2
end

Then(/^i should see only saved innovations displayed$/) do
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div[1]/gl-innovation-card/div/div/h4")
	total_innovations= @@driver.find_elements(:css, ".col-xs-12.col-sm-6.col-md-4.ng-scope").size
	total_innovations.times do
		@@saved||=1
		saved_text=@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div["+@@saved.to_s+"]/gl-innovation-card/div/a[1]").text
		expect("Saved").to eq(saved_text)
		@@saved+=1
	end
end

And(/^i click on Innovations$/) do
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[1]/div[2]/div[2]/div/div[1]/gl-innovation-card/div/div/h4")
	@@driver.find_element(:xpath,INNOVATIONS).click
	sleep 3
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[2]")
end
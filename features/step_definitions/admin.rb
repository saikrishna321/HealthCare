require 'securerandom'
Given(/^i'm on admin page$/) do
	@@login.open_url "http://gl-stage.blzng.com/admin/login/?next=/admin/"
	send_keys(:name, 'username', 'cucumber@example.com')
	send_keys(:name, 'password', '@utoT3sting!')
	#click on login
	@@helper.click_by_xpath("html/body/div[1]/article/div/div/form/div/ul/li/input")
	@@helper.wait_for_elementonscreen_by_xpath('html/body/div[1]/header/div[1]/h1')
end

When(/^i add a group$/) do
	@@helper.click_by_xpath(ADD_GROUP)
	enter_group_name
	add_permission_from
	add_perm_link
end

Then(/^added group should be saved$/) do
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='grp-content-title']/h1")
	send_keys(:xpath, ".//*[@id='grp-changelist-search']", @@str)
	@@helper.click_by_xpath(".//*[@id='grp-changelist-search-form']/button")
	actual=@@driver.find_element(:xpath, " .//*[@id='result_list']/tbody/tr/th/a").text
	expect(actual).to eq(@@str)
end



def send_keys(by, arg, text)
	@@driver.find_element(by, arg).send_keys text
end



def enter_group_name
	random_string = SecureRandom.hex(4)
	@@str='Testing'+random_string
	send_keys(:xpath, ".//*[@id='id_name']", @@str)
end



def add_permission_from
	@@helper.click_by_xpath(".//*[@id='id_permissions_from']/option[1]")
end



def add_perm_link
	@@helper.click_by_xpath(".//*[@id='id_permissions_add_link']")
end



When(/^i add a group with multiple permanent links$/) do
	@@helper.click_by_xpath(ADD_GROUP)
	enter_group_name
	add_permission_from
	add_perm_link
	@@helper.click_by_xpath(".//*[@id='id_permissions_from']/option[2]")
	add_perm_link
	@@helper.click_by_xpath(".//*[@id='group_form']/div/footer/ul/li[1]/input")
end

And(/^i click on Save$/) do
	@@helper.click_by_xpath(".//*[@id='group_form']/div/footer/ul/li[1]/input")
end

And(/^i click on (.*)/) do |arg|
	arg1=ApplicationID.module_eval((arg))
	@@helper.click_by_xpath(arg1)
end

Then(/^i should see element (.*)/) do |arg|
	arg1=ApplicationID.module_eval((arg))
	@@helper.wait_for_elementonscreen_by_xpath(arg1)
	expect(@@helper.is_element_present(arg1)).to be true
end

Then(/^i must be able to delete the created group$/) do
	@@helper.click_by_xpath(ApplicationID.module_eval(('DELETE')))
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='grp-content-container']/div/form/div/ul/li[2]/input")
	@@helper.click_by_xpath(".//*[@id='grp-content-container']/div/form/div/ul/li[2]/input")
	send_keys(:xpath, ".//*[@id='grp-changelist-search']", @@str)
	@@helper.click_by_xpath(".//*[@id='grp-changelist-search-form']/button")
	puts @@helper.get_text(".//*[@id='grp-content-container']/div/div/div/div/nav/ul/li[1]/span")
end

Then(/^i should see the item added in history$/) do
	header_history=@@helper.get_text(".//*[@id='grp-content-title']/h1")
	expect(header_history.include? @@str).to be true
end

And(/^i modify the existing group$/) do
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='grp-content-title']/h1")
	#Click on first group
	@@group_name=@@helper.get_text(".//*[@id='result_list']/tbody/tr[1]/th/a")
	@@helper.click_by_xpath(".//*[@id='result_list']/tbody/tr[1]/th/a")
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='id_name']")
	enter_group_name
	@@helper.click_by_xpath(".//*[@id='group_form']/div/footer/ul/li[2]/input")
end

Then(/^i should see the group name modified$/) do
	group_name_updated=@@helper.get_text(".//*[@id='result_list']/tbody/tr[1]/th/a")
	expect(@@group_name).not_to eql(group_name_updated)
end

When(/^i select multiple groups with index "([^"]*)"$/) do |arg|
	arg.to_i.times do |i|
		@@i=i+1
		@@helper.click_by_xpath(".//*[@id='result_list']/tbody/tr["+@@i.to_s+"]/td/input")
	end

end

And(/^i delete the selected groups$/) do
	option = Selenium::WebDriver::Support::Select.new(@@driver.find_element(:xpath => "//select"))
	option.select_by(:text, "Delete selected groups")
	sleep 2
	#click Yes i'm sure
	@@helper.click_by_xpath(".//*[@id='submit']/ul/li[2]/input")
end
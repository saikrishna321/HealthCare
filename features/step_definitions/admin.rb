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
	random_string = SecureRandom.hex(1)
	@@helper.click_by_xpath(".//*[@id='model-group']/ul/li[1]/a")
	@@str='Testing'+random_string
	send_keys(:xpath, ".//*[@id='id_name']", @@str)
	@@helper.click_by_xpath(".//*[@id='id_permissions_from']/option[1]")
	@@helper.click_by_xpath(".//*[@id='id_permissions_add_link']")
	@@helper.click_by_xpath(".//*[@id='group_form']/div/footer/ul/li[1]/input")
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
And(/^i complete the inventory innovation process$/) do
=begin
	@@helper.wait_for_elementonscreen_by_xpath(".//*[@id='ng-app']/div[2]/div[3]/div[2]/button")
	@@@driver.find_element(:xpath, ".//*[@id='innovationName']").send_keys "Testing123456"
	sleep 1
	@@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[2]/div[1]/form/div[2]/label[2]/input").click
	@@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[2]/div[2]/button").click
	sleep 10
	@@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[3]/div[2]/button").click
	@@helper.wait_for_elementonscreen_by_css(".col-xs-8.col-xs-offset-2.interview-heading")
	@@@driver.find_element(:css, ".interview-butt.ng-scope").click
	sleep 10
	@@helper.wait_for_elementonscreen_by_css(".interview-butt.ng-scope")
	@@@driver.find_element(:css, ".interview-butt.ng-scope").click
	sleep 10
	@@@driver.find_element(:xpath, ".//*[@id='ng-app']/div[2]/div[4]/button[2]").click
=end

	@@driver.find_element(:id, "innovationName").send_keys "testing123"
	@@driver.find_element(:xpath, "(//input[@name='category'])[5]").click
	@@driver.find_element(:css, "button.interview-butt").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[3]/div[2]/button").click
	sleep 3
	wait = Selenium::WebDriver::Wait.new(:timeout => WAIT_TIME) # seconds
	wait.until { @@driver.find_element(:id => "/global-lab/api/v1/question/76/") }
	@@driver.find_element(:id, "/global-lab/api/v1/question/76/").clear
	@@driver.find_element(:id, "/global-lab/api/v1/question/76/").send_keys "test"
	@@driver.find_element(:name, "/global-lab/api/v1/question/77/").click
	@@driver.find_element(:name, "/global-lab/api/v1/question/21/").click
	@@driver.find_element(:id, "/global-lab/api/v1/question/22/").clear
	@@driver.find_element(:id, "/global-lab/api/v1/question/22/").send_keys "tetst"
	@@driver.find_element(:css, "span.ng-binding.ng-isolate-scope > input.ng-pristine.ng-valid").click
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[9]").click
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[16]").click
	sleep 3
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/28/'])[5]").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div[8]/div/label[6]").click
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[22]").click
	@@driver.find_element(:id, "/global-lab/api/v1/question/30/").clear
	@@driver.find_element(:id, "/global-lab/api/v1/question/30/").send_keys "restrs"
	@@driver.find_element(:id, "/global-lab/api/v1/question/31/").clear
	@@driver.find_element(:id, "/global-lab/api/v1/question/31/").send_keys "eresrt"
	@@driver.find_element(:css, "button.interview-butt.ng-scope").click
	@@driver.find_element(:name, "/global-lab/api/v1/question/32/").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/33/'])[3]").click
	@@driver.find_element(:css, "span.ng-binding.ng-isolate-scope > input.ng-pristine.ng-valid").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/36/'])[2]").click
	@@driver.find_element(:name, "/global-lab/api/v1/question/38/").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/39/'])[3]").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/41/'])[2]").click
	@@driver.find_element(:name, "/global-lab/api/v1/question/42/").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div[8]/div/label[2]").click
	@@driver.find_element(:name, "/global-lab/api/v1/question/44/").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/46/'])[2]").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/49/'])[2]").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div[11]/div/label[3]").click
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[8]").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[4]/button[2]").click
	@@driver.find_element(:name, "/global-lab/api/v1/question/52/").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div/div/label[2]").click
	sleep 3
	@@driver.find_element(:css, "span.ng-binding.ng-isolate-scope > input.ng-pristine.ng-valid").click
	sleep 3
	@@driver.find_element(:css, "span.ng-binding.ng-isolate-scope > input.ng-pristine.ng-valid").click
	sleep 3
	@@driver.find_element(:id, "/global-lab/api/v1/question/54/").clear
	@@driver.find_element(:id, "/global-lab/api/v1/question/54/").send_keys "resst"
	sleep 2
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[8]").click
	sleep 2
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[17]").click
	sleep 3
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div[6]/div/label[5]/span").click
	@@driver.find_element(:xpath, "(//input[@type='checkbox'])[20]").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div[7]/div/label[2]/span").click
	@@driver.find_element(:xpath, "(//input[@name='/global-lab/api/v1/question/65/'])[2]").click
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[2]/form/div[8]/div/label[3]").click
	@@driver.find_element(:id, "/global-lab/api/v1/question/68/").clear
	@@driver.find_element(:id, "/global-lab/api/v1/question/68/").send_keys "test"
	@@driver.find_element(:xpath, "//div[@id='ng-app']/div[2]/div[4]/button[2]").click
	sleep 5
	# @@driver.find_element
	#  title="Thank you for submitting your innovation to the Global Lab for Health! The team is going to review and then will either contact you with question or publish your innovation within a week.", @@driver.find_element(:css, "p").text
end
class Helpers
	def wait_for_elementonscreen_by_xpath(arg)
		wait = Selenium::WebDriver::Wait.new(:timeout => WAIT_TIME) # seconds
		wait.until { @@driver.find_element(:xpath => arg) }
	end



	def wait_for_elementonscreen_by_css(arg)
		wait = Selenium::WebDriver::Wait.new(:timeout => WAIT_TIME) # seconds
		wait.until { @@driver.find_element(:css => arg) }
	end



	def is_element_present(arg)
		begin
			result = @@driver.find_elements(:xpath, arg).size() > 0
			if result
				return true
			else
				return false
			end
		rescue
			return false
		end
	end


	def click_by_xpath(arg)
		@@driver.find_element(:xpath, arg).click
	end
end

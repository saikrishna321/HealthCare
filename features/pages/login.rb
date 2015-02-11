class Login

	def click_sign_in
		wait = Selenium::WebDriver::Wait.new(:timeout => WAIT_TIME) # seconds
		wait.until { @@driver.find_element(:xpath => "//button[@type='button']") }
		@@driver.find_element(:xpath, "//button[@type='button']").click
		wait = Selenium::WebDriver::Wait.new(:timeout => WAIT_TIME) # seconds
		wait.until { @@driver.find_element(:id => "email") }
	end



	def enter_credentials(username, password)
		sleep 2
		@@driver.find_element(:id, "email").send_keys username
		@@driver.find_element(:id, "password").send_keys password
		sleep 2
		@@driver.find_element(:css, '.btn.btn-primary').click
		sleep 1.8
	end



	def open_url(arg)
		@@driver.navigate.to arg
	end



	def logout
       @@driver.find_element(:xpath, LOGOUT_BUTTON).click
		   @@driver.find_element(:xpath, LOGOUT).click
			sleep 5
	end
end
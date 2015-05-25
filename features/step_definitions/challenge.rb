When(/^i enter the challenge name and select a date$/) do
   @@driver.find_element(:xpath,".//*[@id='id_name']").send_keys "TestChallenge"

end

Given(/^i'm deleting all added challenge$/) do
  @@login.open_url "http://gl-stage.blzng.com/admin/global_lab/challenge/"
  send_keys(:name, 'username', 'cucumber@example.com')
  send_keys(:name, 'password', '@utoT3sting!')
  @@helper.click_by_xpath("html/body/div[1]/article/div/div/form/div/ul/li/input")
  #select all adopter
  sleep 2
  checkbox_delete=@@driver.find_elements(:xpath, ".//*[@id='result_list']/tbody/tr").size > 0
  if checkbox_delete
    @@helper.click_by_xpath(".//*[@id='action-toggle']")
    option = Selenium::WebDriver::Support::Select.new(@@driver.find_element(:xpath => "//select"))
    option.select_by(:text, "Delete selected challenges")
    sleep 2
    @@helper.click_by_xpath(".//*[@id='submit']/ul/li[2]/input")
  else
    puts 'No challenge  to delete'
  end
end
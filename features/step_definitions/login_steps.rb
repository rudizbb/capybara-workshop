When(/^I am on Appimation home page/) do
  visit('/')
  find(:id, 'start_button').visible?
  find(:id, 'login-b').visible?
  find(:id, 'signup-b').visible?
end

Then(/^I click Login/) do
  find(:id, 'login-b').click
end

Then(/^I enter (.*) in Login email/) do |email|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I enter (.*) in Login password/) do |password|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]').send_keys password
end


Then(/^I Login/) do
  find(:xpath, '//*[@id="login"]/form/button').click

end

Then(/^I am successfully logged in/) do
  find(:id, 'logoutButton').visible?

end
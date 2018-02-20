When(/^I Am On Appimation Home Page/) do
  visit('/')
  find(:id, 'start_button').visible?
  find(:id, 'login-b').visible?
  find(:id, 'signup-b').visible?
end

Then(/^I Click Login/) do
  find(:id, 'login-b').click
end

Then(/^I Enter (.*) in Login Email Field/) do |email|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]').send_keys email
end

Then(/^I Enter (.*) in Login Password Field/) do |password|
  find(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]').send_keys password
end

Then(/^I Click on Login Button/) do
  find(:xpath, '//*[@id="login"]/form/button').click
end

Then(/^I Have Successfully Logged in/) do
  find(:id, 'logoutButton').visible?
end
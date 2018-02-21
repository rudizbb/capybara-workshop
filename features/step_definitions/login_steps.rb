When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

Then(/^I click Try Now/) do
  @pages.page_home.click_try_now
end

Then(/^I enter (.*) in SignUp email/) do |email|
  @pages.page_home.enter_signup_email(email)
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  @pages.page_home.enter_passwords(password)
end

Then(/^I enter (.*) in SignUp project name/) do |name|
  @pages.page_home.enter_project_name(name)
end

Then(/^I cancel SignUp/) do
  @pages.page_home.click_signup_cancel  
end

Then(/^I submit signup details/) do
  @pages.page_home.submit_signup("email@test.com", "parole", "testProject")
end

Then(/^I login to my account/) do
  @pages.page_home.success_login("auto_apimation@mailinator.com", "Parole12")
end

Then(/^I am logged in successfully/) do
  @pages.page_project.visible?
end
When(/^I am on Appimation home page/) do
  @tests.signup_tests.load_home_page
end

Then(/^I submit signup details/) do
  @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
  @tests.signup_tests.home_page_visible?
end

Then(/^I submit login details/) do
  @tests.login_tests.open_login_form_and_login_successfully
end

Then(/^I see Appimation project page/) do
  @tests.login_tests.login_is_successfull
end
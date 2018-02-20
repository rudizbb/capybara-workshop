When(/^I am on Appimation login page/) do
  visit('/')

  test = find('#start_button',text: "Try now")
  puts "#{test.text}"

  test2 = find('#signup-b',text: "Sign Up")
  puts "#{test2.text}"

  #Contact Us
  find(:xpath, '//*[@id="cta"]')
  puts "Contact Section"

  find(:xpath, '//*[@id="name"]')
  puts "Contact Us: Name"

  find(:xpath, '//*[@id="contactus-message"]')
  puts "Contact Us: Message"

  find(:xpath, '//*[@id="email"]')
  puts "Contact Us: Email"

  find(:xpath, '//*[@id="contactus-button"]')
  puts "Contact Us: Send Button"

  #Feature Fields
  all(:xpath, "//h3[contains(text(), 'Chain requests with reusable data')]/parent::section/descendant::img").each do |el|
  puts el
  end

  all(:xpath, "//h3[contains(text(), 'Advanced features')]/parent::section/descendant::img").each do |el|
  puts el
  end

  all(:xpath, "//h3[contains(text(), 'Reuse data from previous response')]/parent::section/descendant::img").each do |el|
  puts el
  end

  all(:xpath, "//h3[contains(text(), 'Team up')]/parent::section/descendant::img").each do |el|
  puts el
  end

  all(:xpath, "//h3[contains(text(), 'Receive reports')]/parent::section/descendant::img").each do |el|
  puts el
  end

  all(:xpath, "//h3[contains(text(), 'Continuous integration')]/parent::section/descendant::img").each do |el|
  puts el
  end
  
end

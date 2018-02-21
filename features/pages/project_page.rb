class ProjectPage < BasePage
    #attr_accessor :button_start
  def initialize
    @dash_email = Element.new(:xpath, '//div[@id = "userEmail"]/descendant::span[contains(text(), "demo@demo.com")]')
    @dash_project = Element.new(:xpath, '//div[@id = "dropdownMenu1"]/descendant::a[contains(text(), "demo")]')
    @dash_test_title = Element.new(:id, 'testDataTitle')
    @dash_steps_frame = Element.new(:id, 'steps')
    @dash_case_frame = Element.new(:id, 'cases')
    @dash_set_frame = Element.new(:id, 'sets')
    @button_logout = Element.new(:id, 'logoutButton')
  end

  def visible?(email, project)
      #@dash_email.visible?
      valid_email email
      #@dash_project.visible?
      valid_project project
      @dash_test_title.visible?
      @dash_steps_frame.visible?
      @dash_case_frame.visible?
      @dash_set_frame.visible?
      @button_logout.visible?
  end

  def valid_email(email)
      @dash_email == email
  end

  def valid_project(project)
      @dash_project == project
  end

end
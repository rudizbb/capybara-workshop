class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def open_login_form_and_login_successfully
    @pages.page_home.success_login("demo@demo.com", "parole112")
  end

  def login_is_successfull
    @pages.page_project.visible?("demo@demo.com", "parole112")
  end

end

require 'securerandom'

module Users
    def Users.signup_user
        @signup_user ||= User.new(email: 'demo@demo.com', password: 'parole112')
        @signup_user
    end

    def Users.login_user
        @login_user ||= User.new(email: 'demo@demo.com', password: 'parole112')
        @login_user
    end

    def Users.login_user_negative
        @login_user_negative ||= User.new(email: 'incorrect@email.com', password: 'incorrect_password')
        @login_user_negative
    end

    def Users.signup_without_email
        @signup_user_without_email ||= User.new(email: '', password: 'incorrect_password')
        @signup_user_without_email
    end

    def Users.signup_without_passwords
        @signup_user_without_passwords ||= User.new(email: 'demo@demo.com', password: '')
        @signup_user_without_passwords
    end

    def Users.signup_long_project_name
        @signup_user_long_project_name ||= User.new(email: 'demo@demo.com', password: 'password')
        @signup_user_long_project_name
    end

    def Users.signup_long_email
        @signup_user_long_email ||= User.new(email: 'this_is_longemail' + SecureRandom.hex(50) + '@email.com', password: 'password')
        @signup_user_long_email
    end
end

class User
    attr_reader :email, :password, :project_name
    def initialize(email:, password:)
        @email = email
        @password = password
        @project_name = 'Project' + SecureRandom.hex(3)
    end
end
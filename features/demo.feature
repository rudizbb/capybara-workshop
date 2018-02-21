Feature: Demo Feature

    Scenario: Successful Login
        Given I Am On Appimation Home Page
        When I Click Login
        And I Enter demo@demo.com In Login Email
        And I Enter parole112 In Login Password
        Then I Click on Login Button
        Then I Am Successfully Logged In 
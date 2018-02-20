Feature: Demo Feature

    Scenario: Logged in Successfully
        Given I Am On Appimation Home Page
        When I Click Login
        And I Enter demo@demo.com in Login Email Field
        And I Enter parole112 in Login Password Field
        Then I Click on Login Button
        Then I Have Successfully Logged in
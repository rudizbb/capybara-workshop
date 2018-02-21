Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I submit signup details

    Scenario: Successul login
        Given I am on Appimation home page
        When I login to my account
        Then I am logged in successfully
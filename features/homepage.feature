Feature: Home page
  In order to learn about mirror app
  As a user
  I should be able to see the home page

  Scenario: Home page
    Given I am on the homepage
    Then I should see "Sign in"

  Scenario: Registering
    Given I am on the homepage
    And I follow "Register"
    When I fill out the registration form as "jeff@dickey.xxx"
    Then I should be signed in as "jeff@dickey.xxx"

  Scenario: Signing out
    Given I am signed in as "jeff@dickey.xxx"
    And I am on the homepage
    When I sign out
    Then I should not be signed in

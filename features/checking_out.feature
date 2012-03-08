Feature: Checking out
  In order to analyze my day
  As a user
  I need to be able to check out

  Scenario: Checking out
    Given I am signed in
    And I am on the homepage
    When I follow "Check out"
    And I submit the check out form
    Then I should have checked out

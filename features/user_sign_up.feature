Feature: User sign up
  As a user
  I want to be able to sign up for the application
  So that I can access the features offered by the app

  Scenario: Successful sign up
    Given I am on the sign up page
    When I fill in "Username" with "johndoe"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click on "Sign up"
    Then I should see "Welcome! You have signed up successfully."
    And I should be on the root page

  Scenario: Unsuccessful sign up
    Given I am on the sign up page
    When I fill in "Username" with "johndoe"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "wrongpassword"
    And I click on "Sign up"
    Then I should see "Password confirmation doesn't match Password"
    And I should be on the sign up page

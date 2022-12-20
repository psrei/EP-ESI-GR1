# features/user_sign_in.feature
Feature: User sign in
  As a user
  I want to be able to sign in to the application
  So that I can access my account and the features offered by the app

  Scenario: Successful sign in
    Given I am on the sign in page
    And I have an account
    When I fill in "Username" with "johndoe"
    And I fill in "Password" with "password"
    And I click on "Sign in"
    Then I should see "Signed in successfully."
    And I should be on the root page

  Scenario: Unsuccessful sign in
    Given I am on the sign in page
    When I fill in "Username" with "johndoe"
    And I fill in "Password" with "wrongpassword"
    And I click on "Sign in"
    Then I should see "Invalid username or password."
    And I should be on the sign in page
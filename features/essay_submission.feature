Feature: Essay submission
  As a user
  I want to be able to submit essays to the application
  So that they can be corrected by teachers

  Scenario: Successful essay submission
    Given I am signed in
    And I am on the new essay page
    When I fill in "Title" with "My essay"
    And I fill in "Content" with "This is the content of my essay."
    And I click on "Submit"
    Then I should see "Essay was successfully submitted."
    And I should be on the root page

  Scenario: Unsuccessful essay submission
    Given I am signed in
    And I am on the new essay page
    When I fill in "Title" with ""
    And I fill in "Content" with "This is the content of my essay."
    And I click on "Submit"
    Then I should see "Title can't be blank"
    And I should be on the new essay page

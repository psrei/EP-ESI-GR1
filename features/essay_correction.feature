# features/essay_correction.feature
Feature: Essay correction
  As a teacher
  I want to be able to correct essays submitted by students
  So that they can receive feedback on their writing

  Scenario: Successful essay correction
    Given I am signed in as a teacher
    And I am on the students page
    When I click on "Show" for a student
    And I click on "Correct" for an essay
    Then I should see "Essay was successfully corrected."
    And I should be on the student's show page

  Scenario: Unsuccessful essay correction
    Given I am signed in as a teacher
    And I am on the students page
    When I click on "Show" for a student
    And I click on "Correct" for an essay that has already been corrected
    Then I should see "This essay has already been corrected."
    And I should be on the student's show page

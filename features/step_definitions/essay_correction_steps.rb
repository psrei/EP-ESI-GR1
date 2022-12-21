# features/step_definitions/essay_correction_steps.rb

Given("I am signed in as a teacher") do
  # This step can be implemented by visiting the sign in page, filling in the
  # username and password fields for a teacher account, and clicking the "Sign in" button.
end

Given("I am on the students page") do
  visit("/teachers/index")
end

When("I click on {string} for a student") do |link|
  # This step can be implemented by selecting a student from a list of students
  # on the page and clicking the specified link.
end

When("I click on {string} for an essay") do |link|
  # This step can be implemented by selecting an essay from a list of essays
  # for a student on the page and clicking the specified link.
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end

Then("I should be on the student's show page") do
  # This step can be implemented by checking that the current path is the show
  # page for the selected student.
end

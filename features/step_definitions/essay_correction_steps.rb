# features/step_definitions/essay_correction_steps.rb

Given("I am signed in as a teacher") do
  # This step can be implemented by visiting the sign in page, filling in the
  # username and password fields for a teacher account, and clicking the "Sign in" button.
end

Given("I am on the teacher page") do
  visit("/teachers/index")
end

When("I click on {string} for a student") do |link|
  fill_in(field, with: value)
end

When("I click on {string} for an essay") do |link|
  click_on(button)
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end

Then("I should be on the student's show page") do
  expect(current_path).to eq("/essays/index")
end

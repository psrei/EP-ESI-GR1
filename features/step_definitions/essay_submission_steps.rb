Given("I am signed in") do
  # This step can be implemented by visiting the sign in page, filling in the
  # username and password fields, and clicking the "Sign in" button.
end

Given("I am on the new essay page") do
  visit("/essays/new")
end

When("I fill in {string} with {string}") do |field, value|
  fill_in(field, with: value)
end

When("I click on {string}") do |button|
  click_on(button)
end

Then("I should see {string}") do |message|
  expect(page).to have_content(message)
end

Then("I should be on the root page") do
  expect(current_path).to eq("/")
end

Then("I should be on the new essay page") do
  expect(current_path).to eq("/essays/new")
end

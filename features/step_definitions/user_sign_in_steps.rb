
Given("I am on the sign in page") do
  visit("/login")
end

Given("I have an account") do
  # This step can be left empty if the account already exists in the system
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

Then("I should be on the sign in page") do
  expect(current_path).to eq("/login")
end
Given('I am on the sign up page') do
  visit '/signup'
end

When('I fill in "Username" with "johndoe"') do
  fill_in 'Username', with: 'johndoe'
end

When('I fill in "Password" with "password"') do
  fill_in 'Password', with: 'password'
end

When('I fill in "Password confirmation" with "password"') do
  fill_in 'Password confirmation', with: 'password'
end

When('I fill in "Password confirmation" with "wrongpassword"') do
  fill_in 'Password confirmation', with: 'wrongpassword'
end

When('I click on "Sign up"') do
  click_button 'Sign up'
end

Then('I should see "Welcome! You have signed up successfully."') do
  expect(page).to have_content('Welcome! You have signed up successfully.')
end

Then('I should see "Password confirmation doesnt match Password"') do
  expect(page).to have_content("Password confirmation doesn't match Password")
end

Then('I should be on the root page') do
  expect(current_path).to eq '/'
end

Then('I should be on the sign up page') do
  expect(current_path).to eq '/signup'
end
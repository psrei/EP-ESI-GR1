require "rails_helper"

RSpec.feature "login", type: :feature do

  let!(:user) { FactoryBot.create(:user) }

  scenario "Usuário insere credenciais corretas" do
    visit "/sessions/new"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"
    expect(page).to have_text "You have been signed in"
  end

  scenario "Usuário insere credenciais incorretas" do
    visit "/sessions/new"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"
    expect(page).to_not have_text "You have been signed in"
    expect(page).to have_text "Falha de autenticação! Verifique usuário e senha"
  end
end
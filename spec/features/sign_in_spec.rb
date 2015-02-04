require "rails_helper"
RSpec.feature "A user can sign in" do
  let!(:user) { FactoryGirl.create(:user) }
  scenario "with valid credentials" do
    visit "/"
    click_link "Sign in"
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: "password"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("Signed in as #{user.email}")
  end
end
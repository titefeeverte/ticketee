require 'rails_helper'

RSpec.feature "Users can sign up" do
  scenario "when providing valid details" do


    visit '/'

    click_link 'Sign up'

    fill_in "user[email]", with: "user@example.com"
    fill_in "user[password]", with: "password"
    #fill_in "user[password_confirmation]", with: "password"
    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully.")
  end
end
require 'rails_helper'

RSpec.feature "Unauthenticated user signs up" do
  scenario "they see the page with thier name" do
    user_name = "Nick Goddard"
    user_email = "nick@simplapps.co.uk"
    user_password = "Pa$$w0rd"
    user_password_confirmation = "Pa$$w0rd"
    
    visit root_path
    click_on "Sign Up"
    fill_in "user_name", with: user_name
    fill_in "user_email", with: user_email
    fill_in "user_password", with: user_password
    fill_in "user_password_confirmation", with: user_password_confirmation
    click_on "Sign Up"
    
    expect(page).to have_text(user_name)
  end
  
  context "the form is invalid" do
    scenario "they see a useful error message" do
      user_email = "nick@simplapps.co.uk"
      user_password = "Pa$$w0rd"
      user_password_confirmation = "Pa$$w0rd"
      
      visit root_path
      click_on "Sign Up"
      fill_in "user_email", with: user_email
      fill_in "user_password", with: user_password
      fill_in "user_password_confirmation", with: user_password_confirmation
      click_on "Sign Up"
      
      expect(page).to have_text("Name can't be blank")
    end
  end
      
end
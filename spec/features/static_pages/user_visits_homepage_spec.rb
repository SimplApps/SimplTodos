require 'rails_helper'

RSpec.feature "User visits homepage" do
  scenario "they see the website name" do
    visit root_path
    expect(page).to have_text('SimplTodos')
  end
end
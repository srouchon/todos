require "rails_helper"

feature "User visits homepage" do #capybara syntax
  scenario "successfully" do #capybara syntax
    visit root_path #capybara syntax
    expect(page).to have_css 'h1', text: 'Todos' #rspec syntax with capibara object page
  end
end
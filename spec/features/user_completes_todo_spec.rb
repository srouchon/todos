require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    create_todo('Buy almond milk')
    click_on('Mark completed')
    expect(page).to display_completed_todo('Buy almond milk')
  end  
end
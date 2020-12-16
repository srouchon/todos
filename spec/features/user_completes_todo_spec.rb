require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    
    click_on('Add a new todo')
    fill_in("Title",	with: "Buy almond milk")
    click_on('Submit')
    
    click_on('Mark completed')
    expect(page).to have_css '.todos li.completed', text: 'Buy almond milk'
    
  end
end
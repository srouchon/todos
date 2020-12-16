require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    
    click_on('Add a new todo') #capibara syntax
    fill_in("Title",	with: "Buy almond milk") #capibara syntax
    click_on('Submit') #capibara syntax
    
    expect(page).to have_css '.todos li', text: 'Buy almond milk' #rspec syntax
  end
end
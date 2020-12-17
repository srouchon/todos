require 'rails_helper'

feature 'User sees own todos' do
  scenario "doesn't see others todos" do
    Todo.create!(title: 'Send a post card to my friend', email: 'someone_else@email.com')
    sign_in_as 'someone@email.com'
    expect(page).not_to display_todo "Send a post card to my friend"  
  end
end
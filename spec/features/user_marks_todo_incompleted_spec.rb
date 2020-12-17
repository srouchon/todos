require 'rails_helper'

feature 'User marks todo incompleted' do
  scenario 'successfully' do
    sign_in
    create_todo('Buy almond milk')
    click_on('Mark completed')
    click_on('Mark incompleted')
    expect(page).not_to display_completed_todo('Buy almond milk')
    expect(page).to display_todo('Buy almond milk')
  end
end
require 'rails_helper'

feature 'User completes a todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Add New Todo'
    fill_in 'Title', with: 'Need to pick up lunch.'
    click_on 'Submit'

    click_on 'Mark completed'

    expect(page).to have_css '.todos li.completed', text: 'Need to pick up lunch.'
  end
end

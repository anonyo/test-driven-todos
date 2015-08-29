require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    visit root_path
    click_on 'Add New Todo'
    fill_in 'Title', with: 'Need to pick up lunch.'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Need to pick up lunch.'
  end
end

require 'rails_helper'

feature 'User completes a todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Need to pick up lunch.'

    click_on 'Mark completed'

    expect(page).to have_css '.todos li.completed', text: 'Need to pick up lunch.'
  end
end

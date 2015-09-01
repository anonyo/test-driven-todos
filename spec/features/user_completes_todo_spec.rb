require 'rails_helper'

feature 'User completes a todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Need to pick up lunch.'

    click_on 'Mark completed'

    expect(page).to display_completed_todo 'Need to pick up lunch.'
  end
end

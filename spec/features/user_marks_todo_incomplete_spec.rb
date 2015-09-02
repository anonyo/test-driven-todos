require 'rails_helper'

feature 'User marks todo as incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo 'Need to pick up lunch.'

    click_on 'Mark completed'
    click_on 'Mark incomplete'

    expect(page).not_to display_completed_todo 'Need to pick up lunch.'
    expect(page).to display_todo 'Need to pick up lunch.'
  end
end

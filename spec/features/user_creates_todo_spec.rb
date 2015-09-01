require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    create_todo 'Need to pick up lunch.'

    expect(page).to display_todo 'Need to pick up lunch.'
  end
end

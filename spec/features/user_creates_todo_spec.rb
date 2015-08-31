require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    create_todo 'Need to pick up lunch.'

    expect(page).to have_css '.todos li', text: 'Need to pick up lunch.'
  end
end

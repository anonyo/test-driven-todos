require 'rails_helper'

feature 'User sees own todos' do
  scenario "doesn't see others' todos" do
    Todo.create!(title: 'code more', email: 'someone_else@gmail.com')

    sign_in_as 'someone@gmail.com'

    expect(page).not_to display_todo 'code more'
  end
end

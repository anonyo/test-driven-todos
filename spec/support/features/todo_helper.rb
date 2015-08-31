module Features
  def create_todo(todo_title)
    click_on 'Add New Todo'
    fill_in 'Title', with: todo_title
    click_on 'Submit'
  end
end
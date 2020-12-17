module Features
  def create_todo(todo_title)
    click_on('Add a new todo')
    fill_in("Title",	with: todo_title)
    click_on('Submit')
  end
  
  def display_todo(todo_text)
    have_css('.todos li', text: todo_text)
  end
  
  def display_completed_todo(todo_text)
    have_css('.todos li.completed', text: todo_text)
  end
  
end
class TodosController < ApplicationController
  before_action :authenticate
  
  def index
    @todos = current_user.todos
  end
  
  def new
    @todo = Todo.new
  end
  
  def create
    current_user.todos.create(todo_params)
    # @todo = Todo.new(todo_params.merge(email: current_email))
    redirect_to root_path
  end
  
  private
  
  def todo_params
    params.require(:todo).permit(:title)
  end
  
end
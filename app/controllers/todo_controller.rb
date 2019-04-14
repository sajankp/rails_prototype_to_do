class TodoController < ApplicationController
  def index
    @todo = Todo.all
  end

  def new
   @todo = Todo.new
  end

  def create
    @todo = Book.new(todo_params)

    if @todo.save
      redirect_back(fallback_location: root_path)
    else
      redirect_to :action => 'list'
    end
  end

  def todo_params
     params.require(:todo).permit(:content)
  end


end

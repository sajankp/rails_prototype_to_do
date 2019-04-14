class TodoController < ApplicationController
  def list
    @todo = Todo.all
  end

  def new
   @todo = Todo.new
  end

  def create
    @todo = Book.new(todo_params)

    if @todo.save
      redirect_to :action => 'list'
    else
      redirect_to :action => 'list'
    end
  end

  def todo_params
     params.require(:todo).permit(:content)
  end


end

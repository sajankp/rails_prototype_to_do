class TodoController < ApplicationController
  def index
    if params[:completed_status]
      @todo = Todo.where(:completed_status=> params[:completed_status])
    else
      @todo = Todo.all
    end
  end

  def new
   @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.js {render inline: "location.reload();" }
      else
        format.js {render inline: "location.reload();" }
      end
    end
  end


  def set_user
      @user = User.find(params[:id])
  end

  def todo_params
     params.permit(:content, :completed_status)
  end


end

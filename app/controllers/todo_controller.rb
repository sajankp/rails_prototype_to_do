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

  def edit
  end

  def update
    @todo = Todo.find params[:id]
      respond_to do |format|
        if @todo.update(todo_params)
          format.html { redirect_to todo_index_url }
        else
          format.html { redirect_to todo_index_url }
        end
      end
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

  def destroy
    @todo=Todo.find(params[:id])
    @todo.destroy
    redirect_to todo_index_url
  end

  private

  def set_user
      @user = User.find(params[:id])
  end

  def todo_params
     params.require(:todo).permit(:content, :completed_status, :id)
  end


end

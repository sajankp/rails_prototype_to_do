class TodoController < ApplicationController
  def index
    if params[:completed_status]
      @todo = Todo.order(:created_at).where(:completed_status=> params[:completed_status])
    else
      @todo = Todo.order(:created_at)
    end
  end

  def new
   @todo = Todo.new
  end

  def edit
  end

  def delete_all_completed
    @todo = Todo.where(completed_status:true).destroy_all
    redirect_to todo_index_url
  end


  def update
    @todo = Todo.find params[:id]
      respond_to do |format|
        if @todo.update(todo_params)
          format.html {redirect_back fallback_location: todo_index_url}
        else
          format.html {redirect_back fallback_location: todo_index_url}
        end
      end
  end

  def create
    @todo = Todo.new(todo_params)

    respond_to do |format|
      if @todo.save
        format.html {redirect_to todo_index_url}
      else
        format.html {redirect_to todo_index_url}
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

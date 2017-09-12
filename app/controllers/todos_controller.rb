class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :show, :destroy]
  def new
    @user = User.find(params[:user_id])
    @todo = Todo.new
    @action = "Create"
  end

  def create
    @user = User.find(params[:user_id])
    @todo = @user.todos.create(todo_params)
    if @todo.save
      flash[:notice] = ["Success!","The new todo has successfully been saved"]
      redirect_to user_todo_path(@user,@todo)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @action = "Edit"
  end

  def update
    if @todo.update(todo_params)
      flash[:notice] = ["Success!","Your todo has been updated"]
      redirect_to user_todo_path(@user,@todo)
    else
      render 'edit'
    end
  end

  def index
    @user = User.find(params[:user_id])
    @todos = @user.todos.all
  end

  def destroy
    if @todo.destroy
      flash[:notice] = ["Success!","The selected todo has been deleted"]
      redirect_to user_todos_path(@user)
    else
      render 'destroy'
    end
  end

  private

  def set_todo
    @user = User.find(params[:user_id])
    @todo = @user.todos.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end
end

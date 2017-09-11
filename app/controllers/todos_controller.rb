class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :show, :destroy]
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = ["Success!","The new todo has successfully been saved"]
      redirect_to todo_path(@todo)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      flash[:notice] = ["Success!","Your todo has been updated"]
      redirect_to todo_path(@todo)
    else
      render 'edit'
    end
  end

  def index
    @todos = Todo.all
  end

  def destroy
    if @todo.destroy
      flash[:notice] = ["Success!","The selected todo has been deleted"]
      redirect_to todos_path
    else
      render 'destroy'
    end
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:name, :description)
  end
end

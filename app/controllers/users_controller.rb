class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = ["Success!","You have successfully signed up!"]
      redirect_to user_todos_path @user
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email)
  end
end

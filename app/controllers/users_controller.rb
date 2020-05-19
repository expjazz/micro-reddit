class UsersController < ApplicationController
  def new
    @user = User.new
  
  end

  def edit; end 

  def create
    @user = User.new(params.require(:user).permit(:username, :password, :email))
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end

end
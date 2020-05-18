class UsersController < ApplicationController
  def new
    @user = User.new
  
  end

  def edit; end 

  def create
    byebug
    @user = User.new(params.require(:user).permit(:username, :password, :email))
    redirect_to root
  end

end
class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email])
    @user.authenticate(params[:session][:password])
    redirect_to root_path
    session[:user_id] = @user.id
  
  end
  def destroy; end
end
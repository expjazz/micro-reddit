class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) unless session[:user_id].nil?
  end

  def logged_in?
    return true if current_user

    false
  end
end

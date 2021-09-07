class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authentication_user

  def authentication_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
      redirect_to new_session_path, :notice => "Logged out!" unless @current_user
    else
      redirect_to root_path
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end

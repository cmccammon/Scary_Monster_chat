class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

def authenticate_user
  unless user_logged_in?
    redirect_to login_path
end

def current_user
  if user_logged_in?
  User.find(session[:logged_in_user_id])
  end
end


def user_logged_in?
  session[:logged_in_user_id].present?
end

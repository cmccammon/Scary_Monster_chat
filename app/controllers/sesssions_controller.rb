class SesssionsController < ApplicationController
  skip_before_filter :authenticate_user

  def new #login page
  end

  def about
  end

  def create #a session
    user = User.find_by_username(params[:username])
    if user.present? && user.authenticate(params[:password])
      set_user_session(user)
      redirect_to chats_path, notice: "Log in successful."
    else
      render :new
      flash[:alert] = "Username or password did not match."
    end
  end

  def destroy #logout
    session[:logged_in_user_id] = nil
    redirect_to root_path, notice: "You have logged out."
  end

  private

  def set_user_session(user)
    session[:logged_in_user_id] = user.id
  end

end

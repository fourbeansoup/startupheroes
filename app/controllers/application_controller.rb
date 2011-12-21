class ApplicationController < ActionController::Base
  protect_from_forgery
  def authenticate_admin_user
    authenticate
  end

  def authenticate
    unless current_user
      flash[:warning] = "<strong>Sign In</strong> to use that feature"
      redirect_to :root
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end

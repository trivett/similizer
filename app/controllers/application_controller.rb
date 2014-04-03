class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :current_user
  def current_user
  	if session[:user_id]
  		return User.find(session[:user_id])
  	else
  		return nil
  	end
  end

  def authenticate
  	if current_user == nil
  		flash[:notice]="I'm sorry you don't seem to exist in our database...or anywhere else..."
  	end
  end

  # protect_from_forgery with: :exception
end

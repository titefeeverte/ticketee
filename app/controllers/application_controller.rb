class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # la méthode est déjà pré-définie par Devise selon une manière différente. 
  # def current_user
  #    @current_user=  session[:user_id] ? (User.find(session[:user_id]) rescue  User.new) : User.new
  # end
  # helper_method :current_user

end

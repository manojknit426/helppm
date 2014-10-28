class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'json'
  protect_from_forgery with: :exception
self.allow_forgery_protection = false
add_flash_types :error, :sussces
helper_method :current_user,:admin
@json=JSON.parse('{"hello": "goodbye"}')
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end

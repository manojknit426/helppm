class SessionsController < ApplicationController
  def create
  user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to '/rules/home'
  end

  def destroy
  session[:user_id] = nil
    redirect_to '/rules/home'
  end
end

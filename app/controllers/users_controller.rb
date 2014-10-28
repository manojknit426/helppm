class UsersController < ApplicationController
  def reg
 password=params[:admin_pass][:password]
 if password=="helppm"
   session[:admin_id]=true
 redirect_to "/rules/rule"
 else
   session[:admin_id]=false
 redirect_to '/users/signin' ,error: 'wrong password'
 end
  end

  def signin
    
  end

  def logout
session[:admin_id]=nil
redirect_to '/rules/home'
  end
end

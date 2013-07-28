class SessionsController < ApplicationController
  def create
   user = User.from_omniauth(env['omniauth.auth'])
   session[:user_id] = user.id
   redirect_to root_url, notice: "Signed in."
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out."
  end

  def failure
   flash[:error] = "Error logging in #{params[:message]}"
   redirect_to root_url, notice: "Unable to sign in."
  end
end

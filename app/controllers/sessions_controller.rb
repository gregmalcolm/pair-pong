class SessionsController < ApplicationController
  def create
    # Rails.logger.debug request.env["omniauth.auth"]
  end

  def failure
    flash[:error] = "Error logging in #{params[:message]}"
    redirect_to root_path
  end
end

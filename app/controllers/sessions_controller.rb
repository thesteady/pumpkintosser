class SessionsController < ApplicationController
	def new
	end

	def create
  	user = User.find_by_email(params[:email])
	  if user && user.authenticate(params[:password])
	    session[:user_id] = user.id

	    redirect_to root_path, notice: "Logged in. Get Tossin' Them Pumpkins!"
	  else
	    redirect_to login_path, alert: "Login attempt failed."
	  end
	end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, alert: "No more tossin' for you :( "
  end
end
class UsersController < ApplicationController
	def index
		@users = User.all
		@beers = Beer.all
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)

		if user.save
			flash[:notice] = "Successfully created account!"
			redirect_to login_path
		else
			msgs = user.errors.full_messages.join(", ")
			flash[:alert] = "Could not create account! Reasons: #{msgs}"
			redirect_to signup_path
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end

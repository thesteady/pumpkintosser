class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = user.new(user_params)
		if user.save
			redirect_to root_path
		else
			redirect_to signup_path
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end

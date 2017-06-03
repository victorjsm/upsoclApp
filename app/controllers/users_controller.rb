class UsersController < ApplicationController
	def new
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to @user
	end

	def destroy
	end

	def update
	end

	def show
	end

	private
		def user_params
			params.require(:user).permit(
				:rut,
				:name,
				:lasName,
				:birthDate,
				:email,
				:password)
		end
end

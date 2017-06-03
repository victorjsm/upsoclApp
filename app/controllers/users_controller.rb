class UsersController < ApplicationController
	def new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def destroy
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(
				:rut,
				:name,
				:lastName,
				:birthDate,
				:email,
				:password)
		end
end

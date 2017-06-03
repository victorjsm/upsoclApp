class SocialsController < ApplicationController
	def create
		@user = User.find(params[:user_id])
		@social = @user.socials.create(social_params)
		redirect_to user_path(@user)
	end
	private
		def social_params
			params.require(:social).permit(:userName, :socialID)
		end

end

class ProfilesController < ApplicationController
	before_action :authenticate_user!
	def index
		@user = current_user.id
		@profile = Profile.find_by(user_id: @user)
	end

	def new
		@profile = Profile.new
		#@profile.user_id = current_user.id
  end
 
	def create
	  @profile = Profile.new(profile_params)
	 	#@profile = current_user.profile.build(params[:profile])
	  if @profile.save
	  	redirect_to profiles_path
		else
			render 'new'
			@profile
		end
	end

	def update
	  @profile = Profile.find(params[:id])
	 
	  if @profile.update(profile_params)
	    redirect_to profiles_path
	  else
	    render 'edit'
	  end
	end

	private

	def profile_params
		params.require(:profile).permit(:name, :last_name, :user_id, :avatar)
	end

end

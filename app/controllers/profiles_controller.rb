class ProfilesController < ApplicationController

	def index
		@user = current_user.id
	end


end

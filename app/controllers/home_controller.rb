class HomeController < ApplicationController
		
  def index
  	@bullying = Profile.all
  end


end

class HomeController < ApplicationController
		
  def index
  	@bullying = Comment.all
  end


end

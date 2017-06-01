class CommentsController < ApplicationController

	  def create
    @profile = Profile.find(params[:profile_id])
    @comment = @profile.comments.create(comment_params)
    redirect_to profiles_path
  end
 
  private
    def comment_params
      params.require(:comment).permit(:title, :text)
    end


end

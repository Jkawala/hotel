class CommentsController < ApplicationController
  def create
    @home = Home.find(params[:particle_id])
    @comment = @home.comments.create(comment_params)
    redirect_to home_path(@home)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params.require(:comment).permit(:comment))
    @comment.post_id = params[:post_id]
    @comment.user = current_user

    @comment.save
    redirect_to post_path(params[:post_id])
  end
end

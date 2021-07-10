class CommentController < ApplicationController
  before_action :authenticate_user!

  def create
    puts params
    @comment = Comment.new(comment_params)
    @comment.save

    respond_to do |format|
      format.js {render layout: false}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :content, :article_id)
  end

end

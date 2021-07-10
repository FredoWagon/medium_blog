class UpvoteController < ApplicationController
  before_action :authenticate_user!

  def create
    new_upvote = Upvote.new(upvote_params.merge(user_id: current_user.id))
    new_upvote.save
    @upvote_count = Article.find(params[:article_id]).upvotes.length

    respond_to do |format|
      format.js {render layout: false}
    end
  end

  private

  def upvote_params
    params.permit(:article_id)
  end

end

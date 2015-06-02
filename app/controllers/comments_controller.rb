class CommentsController < ApplicationController

  def create
    @review = Review.find(params[:review_id])
    @review.comments.create(comment_params)
    redirect_to @review, notice: "Comment successful."
  end

  def destroy
    @review = Review.find(params[:review_id])
    @comment = @review.comments.find(params[:id])
    @comment.destroy

    redirect_to @review, notice: "Comment deleted."
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end

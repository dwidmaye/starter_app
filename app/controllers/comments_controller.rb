class CommentsController < ApplicationController
  # POST /stories/comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment.story, notice: 'Comment was successfully created.'
    else
      #render action: 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :story_id)
  end
end

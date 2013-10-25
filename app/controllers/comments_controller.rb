class CommentsController < ApplicationController
  # POST /stories/comments
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment, notice: 'Comment was successfully created.'
    else
      render action: 'new'
    end
  end
end

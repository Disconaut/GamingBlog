class CommentsController < ApplicationController
  before_action :find_commentable
  def index
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    :authenticate_user!
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    if @comment.save
      redirect_back fallback_location: root_path, notice: 'Your comment was successfully posted!'
    else
      redirect_back fallback_location: root_path, notice: "Your comment wasn't posted!"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end

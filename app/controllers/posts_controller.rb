class PostsController < ApplicationController
  def index

  end

  def create
    if request.post?
      @post = Post.new(post_attr)
      if @post.save
        redirect_to @post
      else
        render :create
      end
    elsif request.get?
      @post = Post.new
    end
  end

  def edit
  end

  def delete
  end

  private
  def post_attr
    params.require(:post).permit(:title, :content, :image)
  end
end

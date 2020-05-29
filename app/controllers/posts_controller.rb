class PostsController < ApplicationController
  before_action :authenticate_admin!, except: %w(index show all)

  def initialize
    @posts_per_page = 10
    super
  end

  def index
    @posts = Post.order(created_at: :desc).all.limit(5)
  end

  def show
    @post = Post.find(params[:id])
  end

  def all

  end

  def create
    @post = Post.new(post_attr)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_attr)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_attr
    params.require(:post).permit(:title, :content, :thumb_img, :header_img)
  end
end

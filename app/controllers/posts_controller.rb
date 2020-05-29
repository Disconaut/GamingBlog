class PostsController < ApplicationController
  before_action :authenticate_admin!, except: ['show']

  def initialize
    @posts_per_page = 10
    super
  end

  def index
    if params.has_key? :page
      (page = params[:page])
    else
      page = 1
    end
    @posts = Post.offset((page - 1) * @posts_per_page).limit(@posts_per_page)
  end

  def show
    @post = Post.find(params[:id])
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
    puts @post
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

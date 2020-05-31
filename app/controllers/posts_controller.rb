class PostsController < ApplicationController
  before_action :authenticate_admin!, except: %w(index show all)

  def index
    @posts = Post.order(created_at: :desc).all.limit(6)
  end

  def show
    @post = Post.find(params[:id])
  end

  def all
    if params.has_key? :category
      @category = params[:category]
      @posts = Post.order(created_at: :desc).where("category = '#{@category}'").page params[:page]
    else
      @category = "All posts"
      @posts = Post.order(created_at: :desc).page params[:page]
    end
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
    params.require(:post).permit(:title, :content, :thumb_img, :header_img, :category)
  end
end

class BlogController < ApplicationController
  def index
    @posts = Post.order(:created_at)._select!(:id, :title, :thumb_img, :created_at).limit(5);
  end

  def posts
  end

  def post
    @post = Post.find(params[:id]);
  end
end

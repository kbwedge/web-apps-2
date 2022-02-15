class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def create
    @posts = Post.new(params["post"])
    @posts.save
    redirect_to "/posts"
  end


end

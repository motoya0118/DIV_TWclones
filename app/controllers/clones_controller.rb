class ClonesController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    Post.create(content: params[:post][:content])
    redirect_to new_clone_path
  end

  def update
    @post = Post.find(params[:id])
    @post.update(content: params[:post][:content])
    redirect_to clones_path
  end

  def destoroy
  end


end

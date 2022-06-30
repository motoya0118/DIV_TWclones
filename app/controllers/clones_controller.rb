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
  end

  def destoroy
  end


end

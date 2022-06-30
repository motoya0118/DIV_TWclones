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
    @post = Post.new(content: params[:post][:content])
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to clones_path, notice: "TWEETしました！"
      else
        render :new
      end
    end

  end

  def update
    @post = Post.find(params[:id])
    if @post.invalid?
      render :new
    else
      @post.update(content: params[:post][:content])
      redirect_to clones_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to clones_path
  end

  def confirm
    @post = Post.new(content: params[:post][:content])
    render :new if @post.invalid?
  end

end

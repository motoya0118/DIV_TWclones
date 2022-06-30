class ClonesController < ApplicationController

  def index
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create
  end

  def update
  end

  def destoroy
  end

end

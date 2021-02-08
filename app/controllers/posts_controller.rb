class PostsController < ApplicationController

  def index
    #@post = Post.find(1)
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

end

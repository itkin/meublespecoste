class PostsController < ApplicationController

  def index
    @posts = Post.published.paginate(:page => params[:page], :per_page => Post.per_page)
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

end

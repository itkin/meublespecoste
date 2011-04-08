class CategoriesController < ApplicationController

  before_filter :get_categories

  def index
    @posts = Post.published.limit(2)
    @stores = Store.all
  end

  def show
    @category = Category.find_by_cached_slug(params[:id])
  end

end

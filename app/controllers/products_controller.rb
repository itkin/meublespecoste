class ProductsController < ApplicationController

  before_filter :get_categories, :get_category

  def show
    @product = Product.find_by_cached_slug(params[:id])
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :choose_layout

  def choose_layout
    if request.xhr?
      false
    else
      'application'
    end
  end

  def get_categories
    @categories = Category.all
  end

  def get_category
    @category = Category.find_by_cached_slug(params[:category_id])
  end


end

class Admin::CategoriesController < Admin::ApplicationController

  active_scaffold :categories do |config|
    config.columns = [:name, :image, :products]
  end

end

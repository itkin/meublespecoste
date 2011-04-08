class Admin::CategoriesController < Admin::ApplicationController

  active_scaffold :categories do |config|
    config.columns = [:name, :image, :products]
    config.update.columns = config.show.columns = [:name, :image]
  end

end

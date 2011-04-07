class Admin::ProductsController < Admin::ApplicationController

  active_scaffold :products do |config|
    config.columns = [:name, :image, :description, :pictures]
    config.show.columns = config.update.columns = [:name, :image, :description]
  end

end

class Admin::CategoriesController < Admin::ApplicationController

  active_scaffold :categories do |config|
    config.columns = [:name, :image, :products]
    config.create.columns = config.update.columns = config.show.columns = [:name, :image]
    config.actions << :sortable
    config.sortable.column = :position
    config.columns[:slug].association.reverse = :product
    config.columns[:slugs].association.reverse = :product
  end

end

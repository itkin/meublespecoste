class Admin::ProductsController < Admin::ApplicationController

  active_scaffold :products do |config|
    config.columns = [:category, :name, :image, :description, :pictures]
    config.show.columns = config.update.columns = config.create.columns = [:name, :image, :description]

    config.update.columns << :pictures
    config.create.columns << :pictures

    config.columns[:pictures].allow_add_existing = false

    config.actions << :sortable
    config.sortable.column = :position

    config.columns[:slug].association.reverse = :product
    config.columns[:slugs].association.reverse = :product

  end

end

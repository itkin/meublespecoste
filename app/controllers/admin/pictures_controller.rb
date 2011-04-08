class Admin::PicturesController < Admin::ApplicationController

  active_scaffold :pictures do |config|
    config.columns = [:image]
    config.actions << :sortable
    config.sortable.column = :position

  end

end

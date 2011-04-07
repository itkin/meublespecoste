class Admin::ContentsController < Admin::ApplicationController

  active_scaffold :contents do |config|
    config.columns = [:label, :text]
    config.actions.exclude :delete, :create
    config.update.columns = config.show.columns = [:text]
  end

end

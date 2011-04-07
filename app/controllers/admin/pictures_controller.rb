class Admin::PicturesController < Admin::ApplicationController

  active_scaffold :pictures do |config|
    config.columns = [:image]
  end

end

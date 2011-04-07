class Admin::ParamsController < Admin::ApplicationController

  active_scaffold :params do |config|
    config.columns = [:label, :value]
    config.update.columns = [:value]
  end

end

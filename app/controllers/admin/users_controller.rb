class Admin::UsersController < Admin::ApplicationController

  active_scaffold :users do |config|
    config.columns= [:email, :created_at]
    config.actions.exclude :show
  end

end

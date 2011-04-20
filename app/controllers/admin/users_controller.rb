class Admin::UsersController < Admin::ApplicationController

  active_scaffold :users do |config|
    config.list.columns= [:email, :created_at]
    config.create.columns= config.update.columns=[:email, :password]
    config.actions.exclude :show
  end

end

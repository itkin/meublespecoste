class Admin::PagesController < Admin::ApplicationController

  active_scaffold :pages do |config|
    config.columns = [:link, :title, :sub_title, :contents]
    config.actions.exclude :delete, :create
    config.show.columns = config.update.columns = [:link, :title, :sub_title]
  end

end

class Admin::PostsController < Admin::ApplicationController

  active_scaffold :posts do |config|
    config.columns = [:published_on, :title, :content]
  end

end

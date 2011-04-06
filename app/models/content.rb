class Content < ActiveRecord::Base
   belongs_to :page
  cache_constants :name

end

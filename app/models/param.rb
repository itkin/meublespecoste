class Param < ActiveRecord::Base
  cache_constants :name

  serialize :value

end

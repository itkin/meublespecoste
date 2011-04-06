class Page < ActiveRecord::Base
  has_many :contents

  cache_constants :name


end

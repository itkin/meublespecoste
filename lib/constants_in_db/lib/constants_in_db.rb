
require File.expand_path('../constants_in_db/cache_constants.rb', __FILE__)
require File.expand_path('../constants_in_db/seeds.rb', __FILE__)
require File.expand_path('../constants_in_db/seeds_file.rb', __FILE__)

ActiveSupport.on_load(:active_record) do
  extend ConstantsCache
end


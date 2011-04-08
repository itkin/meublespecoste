class Admin::StoresController < ApplicationController

  active_scaffold :stores do |config|
    config.list.columns = [:street, :zip_code, :city, :phone_number, :fax_number]
    config.show.columns = config.update.columns = [:street, :zip_code, :city, :phone_number, :fax_number, :comment]
  end
end

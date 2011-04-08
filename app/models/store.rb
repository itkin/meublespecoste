class Store < ActiveRecord::Base

  acts_as_gmappable

  default_scope :order => 'position ASC'

  def gmaps4rails_address
    [street, zip_code, city, 'FRANCE'].join(' ')
  end

end

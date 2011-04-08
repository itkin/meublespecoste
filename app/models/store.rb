class Store < ActiveRecord::Base

  acts_as_gmappable

  default_scope :order => 'position ASC'

  after_validation {|store|
    if ( (store.changed.map(&:to_sym) & [:street, :zip_code, :city] ).size != 0 )
      store.gmaps = false
    end
  }


  def gmaps4rails_address
    [street, zip_code, city, 'FRANCE'].join(' ')
  end

end

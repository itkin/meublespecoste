class Category < ActiveRecord::Base

  has_friendly_id :name, :use_slug => true

  has_attached_file :image, :styles => { :admin => ['50x50!',:jpg], :default => ['127x293!',:jpg] }

  has_many :products
  has_many :pictures, :as => :attachable


end

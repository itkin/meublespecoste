class Product < ActiveRecord::Base

  has_friendly_id :name, :use_slug => true

  has_attached_file :image, :styles => { :admin => ['50x50!',:jpg], :product => ['150x150!',:jpg] }

  belongs_to :category
  has_many :pictures
end

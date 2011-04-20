class Category < ActiveRecord::Base

  has_friendly_id :name, :use_slug => true

  has_attached_file :image, :styles => { :admin => ['50x50!',:jpg], :default => ['127x293!',:jpg] }

  validates_attachment_presence :image
  validates_presence_of :name

  has_many :products

  default_scope :order => 'position ASC'
end

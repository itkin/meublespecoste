class Product < ActiveRecord::Base

  has_friendly_id :name, :cache_column => 'cached_slug', :use_slug => true

  has_attached_file :image, :styles => { :admin => ['50x50!',:jpg], :default => ['x150',:jpg] }

  belongs_to :category

  has_many :pictures

  validates_attachment_presence :image
  validates_presence_of :name

  default_scope :order => 'position ASC'
end

class Picture < ActiveRecord::Base

  has_attached_file :image, :styles => { :admin => ['50x50!',:jpg], :default => ['620x260>',:jpg] }

  belongs_to :product

  default_scope :order => 'position ASC'
end

class Picture < ActiveRecord::Base

  has_attached_file :image, :styles => { :admin => ['50x50!',:jpg], :default => ['x260',:jpg] }

  belongs_to :product


  default_scope :order => 'position ASC'

  validates_attachment_presence :image

end

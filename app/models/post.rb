class Post < ActiveRecord::Base

  cattr_reader :per_page
  @@per_page = 3

  def self.published
    where(:published_on ^ '0000-00-00')
  end

  default_scope :order => 'published_on desc'
end

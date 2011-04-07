class Content < ActiveRecord::Base
  belongs_to :page
  cache_constants :name

  def to_label
    label
  end
end

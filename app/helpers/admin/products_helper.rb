module Admin::ProductsHelper

  def pictures_column(record)
    str = raw record.pictures.map{|p| image_tag(p.image.url(:admin))}.join('')
    str.blank? ? '-' : str
  end

end

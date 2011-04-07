module Admin::CategoriesHelper

  def image_column(record)
    image_tag(record.image.url(:admin))
  end
end

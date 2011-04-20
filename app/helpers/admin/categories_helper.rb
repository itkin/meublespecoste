module Admin::CategoriesHelper

  def image_column(record)
    image_tag(record.image.url(:admin))
  end

#  def products_column(record)
#    if record.products.blank?
#      raw link_to "Ajouter une création", url_for(:action => :new, :controller => :products, :category_id => record.id, :parent_scaffold => 'admin_categories', :eid => "admin__categories_#{record.id}_products"), :remote => true, :inline => true, :position => 'after',:type => 'member'
#    else
#      raw record.products.collect{|p| image_tag(p.image.url(:admin))}.join()
#    end
#  end
end

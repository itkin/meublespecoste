module Admin::PagesHelper

  def title_column(record)
    raw record.title
  end
  def sub_title_column(record)
    raw record.sub_title
  end
  def title_show_column(record)
    title_column(record)
  end
  def sub_title_show_column(record)
    sub_title_column(record)
  end

end

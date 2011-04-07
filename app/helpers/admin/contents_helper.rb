module Admin::ContentsHelper

  def text_column(record)
    raw truncate(record.text, :length => 100)
  end

  def text_show_column(record)
    raw record.text
  end


end

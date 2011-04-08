module Admin::StoresHelper

  def comment_view_column(record)
    raw record.comment
  end
end

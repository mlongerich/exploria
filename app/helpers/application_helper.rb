module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column_student) ? "current #{sort_direction}" : nil
    direction = column == sort_column_student && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(sort: column, direction: direction, page: nil), class: css_class
  end
  def sortable_activity(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column_activity) ? "current #{sort_direction}" : nil
    direction = column == sort_column_activity && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge(sort: column, direction: direction, page: nil), class: css_class
  end
end

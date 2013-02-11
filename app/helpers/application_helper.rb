module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
	direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
	link_to title, :sort => column, :direction =>direction
  end
  def full_title(page_title)
    base_title = "Tap A Deal"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

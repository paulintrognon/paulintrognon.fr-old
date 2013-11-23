module ApplicationHelper

  # Return the page title on a per-page basis
  def full_page_title(page_title)
    base_title = 'paulintrognon.fr'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

end

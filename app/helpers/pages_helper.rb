module PagesHelper

  def text_for title
    Text.find_by_title(title).content.to_s.html_safe
  end

  def placeholders collection
    [nil] * (collection.count % 4)
  end

end

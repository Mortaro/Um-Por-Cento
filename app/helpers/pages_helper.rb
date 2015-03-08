module PagesHelper

  def text_for title
    Text.find_by_title(title).content.to_s.html_safe
  end

  def placeholders collection
    mod = (collection.count % 4)
    [nil] * (mod.zero? ? mod : (4 - mod))
  end

end

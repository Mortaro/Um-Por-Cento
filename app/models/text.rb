class Text < ActiveRecord::Base

  validates_uniqueness_of :title

  def content_summary
     content.to_s.truncate_words(8)
  end

end

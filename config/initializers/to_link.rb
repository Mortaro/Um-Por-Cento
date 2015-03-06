class String
  def to_link
    self.gsub(' ', '+')
  end
end

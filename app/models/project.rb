class Project < ActiveRecord::Base

  def self.we_create
    where(category: 'Create')
  end

  def self.we_serve
    where(category: 'Serve')
  end

end

class AddColumnImageToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :image, :text
  end
end

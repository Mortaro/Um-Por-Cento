class AddColumnCaptionTopToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :caption_top, :string
  end
end

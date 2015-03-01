class AddColumnCaptionBottomToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :caption_bottom, :string
  end
end

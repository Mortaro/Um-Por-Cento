class AddColumnContentToText < ActiveRecord::Migration
  def change
    add_column :texts, :content, :text
  end
end

class AddColumnLinkToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :link, :string
  end
end

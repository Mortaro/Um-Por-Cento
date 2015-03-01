class AddColumnInstagramToMember < ActiveRecord::Migration
  def change
    add_column :members, :instagram, :text
  end
end

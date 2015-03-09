class AddColumnInstagramToProject < ActiveRecord::Migration
  def change
    add_column :projects, :instagram, :string
  end
end

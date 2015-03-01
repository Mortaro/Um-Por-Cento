class AddColumnNameToMember < ActiveRecord::Migration
  def change
    add_column :members, :name, :string
  end
end

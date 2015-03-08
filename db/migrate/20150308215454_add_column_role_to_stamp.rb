class AddColumnRoleToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :role, :string
  end
end

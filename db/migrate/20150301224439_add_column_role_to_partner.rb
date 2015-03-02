class AddColumnRoleToPartner < ActiveRecord::Migration
  def change
    add_column :partners, :role, :string
  end
end

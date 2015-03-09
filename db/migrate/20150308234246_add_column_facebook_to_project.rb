class AddColumnFacebookToProject < ActiveRecord::Migration
  def change
    add_column :projects, :facebook, :string
  end
end

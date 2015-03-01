class AddColumnFacebookToMember < ActiveRecord::Migration
  def change
    add_column :members, :facebook, :text
  end
end

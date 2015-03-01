class AddColumnAboutToMember < ActiveRecord::Migration
  def change
    add_column :members, :about, :text
  end
end

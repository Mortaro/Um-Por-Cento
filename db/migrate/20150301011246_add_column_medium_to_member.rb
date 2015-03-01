class AddColumnMediumToMember < ActiveRecord::Migration
  def change
    add_column :members, :medium, :text
  end
end

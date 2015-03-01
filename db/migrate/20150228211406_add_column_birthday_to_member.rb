class AddColumnBirthdayToMember < ActiveRecord::Migration
  def change
    add_column :members, :birthday, :string
  end
end

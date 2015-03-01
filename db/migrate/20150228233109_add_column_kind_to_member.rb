class AddColumnKindToMember < ActiveRecord::Migration
  def change
    add_column :members, :kind, :string
  end
end

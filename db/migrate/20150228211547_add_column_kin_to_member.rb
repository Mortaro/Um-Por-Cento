class AddColumnKinToMember < ActiveRecord::Migration
  def change
    add_column :members, :kin, :string
  end
end

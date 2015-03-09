class AddColumnKindToProject < ActiveRecord::Migration
  def change
    add_column :projects, :kind, :string
  end
end

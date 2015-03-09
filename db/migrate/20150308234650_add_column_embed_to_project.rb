class AddColumnEmbedToProject < ActiveRecord::Migration
  def change
    add_column :projects, :embed, :string
  end
end

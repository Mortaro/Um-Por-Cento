class AddColumnVimeoToProject < ActiveRecord::Migration
  def change
    add_column :projects, :vimeo, :string
  end
end

class AddColumnVimeoToMember < ActiveRecord::Migration
  def change
    add_column :members, :vimeo, :text
  end
end

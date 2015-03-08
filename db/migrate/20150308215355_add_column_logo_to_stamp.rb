class AddColumnLogoToStamp < ActiveRecord::Migration
  def change
    add_column :stamps, :logo, :string
  end
end

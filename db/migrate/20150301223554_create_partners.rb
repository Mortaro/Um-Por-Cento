class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|

      t.timestamps null: false
    end
  end
end

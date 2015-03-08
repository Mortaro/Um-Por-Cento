class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|

      t.timestamps null: false
    end
  end
end

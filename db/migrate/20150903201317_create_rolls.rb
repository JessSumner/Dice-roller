class CreateRolls < ActiveRecord::Migration
  def change
    create_table :rolls do |t|

      t.timestamps null: false
    end
  end
end

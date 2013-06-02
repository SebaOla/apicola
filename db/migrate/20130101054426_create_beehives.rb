class CreateBeehives < ActiveRecord::Migration
  def change
    create_table :beehives do |t|
      t.string :codigo
      t.integer :apiary_id
      t.integer :beehive_id

      t.timestamps
    end
  end
end

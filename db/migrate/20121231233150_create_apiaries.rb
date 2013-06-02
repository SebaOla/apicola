class CreateApiaries < ActiveRecord::Migration
  def change
    create_table :apiaries do |t|
      t.string :name
      t.string :adress
      t.string :coordinates

      t.timestamps
    end
  end
end

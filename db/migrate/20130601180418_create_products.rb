class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :weigth
      t.string :volume
      t.string :unit_price
      t.string :stock

      t.timestamps
    end
  end
end

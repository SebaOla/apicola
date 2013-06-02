class CreateBillsProducts < ActiveRecord::Migration
  def up
    create_table :bills_products do |t|
      t.integer :bill_id
      t.integer :product_id
    end
  end

  def down
  end
end

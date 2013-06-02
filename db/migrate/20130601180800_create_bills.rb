class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :customer_id
      t.string :total_amount
      t.datetime :date

      t.timestamps
    end
  end
end

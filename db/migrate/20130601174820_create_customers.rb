class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :adress
      t.string :business_phone
      t.string :personal_phone
      t.string :coordinates

      t.timestamps
    end
  end
end

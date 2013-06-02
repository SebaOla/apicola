class AddCapacityToApiaries < ActiveRecord::Migration
  def change
    add_column :apiaries, :capacity, :integer
  end
end

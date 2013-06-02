class Product < ActiveRecord::Base
  attr_accessible :description, :name, :stock, :unit_price, :volume, :weigth
  
  has_and_belongs_to_many :bills
end

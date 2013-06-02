class Bill < ActiveRecord::Base
  attr_accessible :customer_id, :date, :total_amount
  
  belongs_to :customer
  has_and_belongs_to_many :products
  
end

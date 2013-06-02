class Customer < ActiveRecord::Base
  attr_accessible :adress, :business_phone, :coordinates, :name, :personal_phone
end

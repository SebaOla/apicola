class Apiary < ActiveRecord::Base
  attr_accessible :adress, :coordinates, :name, :capacity
  
  has_many :beehives

end

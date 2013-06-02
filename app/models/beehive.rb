class Beehive < ActiveRecord::Base
  attr_accessible :codigo, :apiary_id, :beehive_id
  
  belongs_to :apiary
  belongs_to :beehive
  has_many :tasks
    
end

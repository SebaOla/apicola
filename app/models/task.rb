class Task < ActiveRecord::Base
  attr_accessible :description, :title, :beehive_id
  
  belongs_to :beehive
  
end

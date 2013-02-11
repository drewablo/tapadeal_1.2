class Special < ActiveRecord::Base
  attr_accessible :bar_id, :drink, :day
  
  belongs_to :bar
  belongs_to :city
end

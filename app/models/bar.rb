class Bar < ActiveRecord::Base
  attr_accessible :city_id, :name
  
  belongs_to :city
  has_many :specials
  
  validates_presence_of :city_id	
  
end

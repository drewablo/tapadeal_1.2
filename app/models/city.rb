class City < ActiveRecord::Base
  attr_accessible :local
 
  has_many :bars
  has_many :specials
end

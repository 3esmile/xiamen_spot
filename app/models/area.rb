class Area < ActiveRecord::Base
  attr_accessible :name, :position
  has_many :spots
end

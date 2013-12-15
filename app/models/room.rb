class Room < ActiveRecord::Base
  attr_accessible :floor, :name, :seat, :conference_id
 
  has_many :workshops
end

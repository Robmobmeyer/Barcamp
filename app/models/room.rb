class Room < ActiveRecord::Base
  attr_accessible :floor, :name, :seat, :conference_id
  belongs_to :conference
end

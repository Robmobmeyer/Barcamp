class Workshop < ActiveRecord::Base
  attr_accessible :name, :talker, :conference_id, :start_time, :end_time, :room_id
  belongs_to :conference
  belongs_to :room
  validates :name, presence: true
 # accepts_nested_attributes_for :room
end

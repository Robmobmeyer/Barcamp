class Conference < ActiveRecord::Base
  attr_accessible :name, :organizer, :room, :session, :start_date, :start_time
  has_many :workshops
  has_many :rooms
  #validates :name, :organizer, :room, :session, :presence => true
  #validates :room, :numericality => {:greater_than_or_equal_to => 0.01}
end

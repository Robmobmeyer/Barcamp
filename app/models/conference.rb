class Conference < ActiveRecord::Base
  attr_accessible :name, :organizer, :room, :session, :start_date, :start_time
  has_many :workshops
end

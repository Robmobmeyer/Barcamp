class Workshop < ActiveRecord::Base
  attr_accessible :name, :talker, :conference_id
  belongs_to :conference
end
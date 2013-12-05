class RemoveRoomFromConference < ActiveRecord::Migration
  def up
    remove_column :conferences, :room
  end

 
end

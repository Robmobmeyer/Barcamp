class AddRoomIdToWorkshop < ActiveRecord::Migration
  def change
    add_column :workshops, :room_id, :integer

  end
end

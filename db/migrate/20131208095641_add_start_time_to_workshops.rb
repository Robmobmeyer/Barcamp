class AddStartTimeToWorkshops < ActiveRecord::Migration
  def change
    add_column :workshops, :start_time, :time
    add_column :workshops, :end_time, :time
  end
end

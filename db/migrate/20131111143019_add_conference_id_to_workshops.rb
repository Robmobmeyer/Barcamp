class AddConferenceIdToWorkshops < ActiveRecord::Migration
  def change
  	add_column :workshops, :conference_id, :integer
  end
end

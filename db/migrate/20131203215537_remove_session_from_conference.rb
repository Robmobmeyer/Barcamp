class RemoveSessionFromConference < ActiveRecord::Migration
  def up
    remove_column :conferences, :session
  end

  
end

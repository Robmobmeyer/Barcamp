class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.string :organizer
      t.integer :room
      t.date :start_date
      t.time :start_time
      t.string :session

      t.timestamps
    end
  end
end

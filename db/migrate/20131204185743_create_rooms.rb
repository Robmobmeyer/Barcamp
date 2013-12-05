class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :seat
      t.string :name
      t.string :floor

      t.timestamps
    end
  end
end

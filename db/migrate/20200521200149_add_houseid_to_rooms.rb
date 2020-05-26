class AddHouseidToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :house_id, :integer
  end
end

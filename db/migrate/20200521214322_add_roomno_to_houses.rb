class AddRoomnoToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :number_of_rooms, :integer
  end
end

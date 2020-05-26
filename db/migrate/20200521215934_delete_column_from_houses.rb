class DeleteColumnFromHouses < ActiveRecord::Migration[6.0]
  def change
    remove_column :houses, :number_of_rooms
  end
end

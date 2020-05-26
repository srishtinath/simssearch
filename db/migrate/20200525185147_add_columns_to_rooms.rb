class AddColumnsToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :blurb, :string
    add_column :rooms, :long_description, :string
  end
end

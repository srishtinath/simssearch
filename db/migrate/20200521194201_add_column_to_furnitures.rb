class AddColumnToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :img_url, :string
  end
end

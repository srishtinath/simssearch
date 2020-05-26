class AddColumnsToHouse < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :description, :string
    add_column :houses, :name, :string
    add_column :houses, :img_url2, :string
    add_column :houses, :img_url3, :string
    add_column :houses, :img_url4, :string
  end
end

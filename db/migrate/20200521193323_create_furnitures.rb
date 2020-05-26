class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.string :category
      t.string :style

      t.timestamps
    end
  end
end

class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :rooms, :blurb, :text
    change_column :rooms, :long_description, :text
  end
end

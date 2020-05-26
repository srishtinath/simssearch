class Room < ApplicationRecord
    belongs_to :house

    has_many :room_furnitures
    has_many :furnitures, through: :room_furnitures

    def self.search(search)
        if !search.blank?
            Room.all.where(primary_color_scheme: search)
        else
            Room.all
        end
    end

    def self.color_schemes_list
        Room.all.map {|room| room.primary_color_scheme}.uniq
    end
end


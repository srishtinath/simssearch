class House < ApplicationRecord
    has_many :rooms

    def self.search(search)
        if search
            houses_hash = {}
            House.all.each {|house| houses_hash[house] = house.rooms.count }
            results_hash = houses_hash.select{|k,v| v == search.to_i}.keys
            !results_hash.empty? ? results_hash : House.all

        else
            House.all
        end
    end
end
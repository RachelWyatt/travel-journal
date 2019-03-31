class Trip < ApplicationRecord
    belongs_to :user 
    has_many :trip_entries
    has_many :locations, through: :trip_entries

    def self.descending_order 
        order("created_at DESC")
    end
end

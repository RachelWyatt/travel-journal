class Trip < ApplicationRecord
    belongs_to :user 
    has_many :trip_entries
    has_many :locations, through: :trip_entries
end

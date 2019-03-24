class Location < ApplicationRecord
    has_many :trip_entries
    has_many :trips, through: :trip_entries
    validates :name, presence: true
end

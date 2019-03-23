class User < ApplicationRecord
    has_many :trips 
    has_many :trip_entries, through: :trips
end

class Trip < ApplicationRecord
    belongs_to :user 
    has_many :trip_entries
    has_many :locations, through: :trip_entries
    scope :descending_order, -> {order("created_at DESC")}

end

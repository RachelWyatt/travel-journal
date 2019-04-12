class TripEntry < ApplicationRecord
    belongs_to :trip 
    belongs_to :location 
    validates :journal_entry, presence: :true
    validates :journal_entry, length: {maximum: 180}



end

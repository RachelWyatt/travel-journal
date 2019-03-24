class User < ApplicationRecord
    has_secure_password
    has_many :trips 
    has_many :trip_entries, through: :trips
    validates :email, uniqueness: true
    validates :password, presence: true 

    def sort_by_most_recent
        entries = self.trip_entries.all 
        entries.order("created_at DESC")
    end
end

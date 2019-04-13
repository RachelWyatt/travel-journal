class User < ApplicationRecord
    has_secure_password
    has_many :trips 
    has_many :trip_entries, through: :trips
    validates :email, presence:true, uniqueness: true

    def user_locations 
        loc_array = []
        trips.each do |t|
            t.locations.each do |l|
                loc_array << l.name
            end
        end
        loc_array.uniq!
    end

end

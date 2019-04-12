class User < ApplicationRecord
    has_secure_password
    has_many :trips 
    has_many :trip_entries, through: :trips
    validates :email, presence:true, uniqueness: true

end

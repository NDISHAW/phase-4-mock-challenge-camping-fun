class Camper < ApplicationRecord
    validates 
    has_many :signups

    has_many :activities
end

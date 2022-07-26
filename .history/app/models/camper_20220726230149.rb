class Camper < ApplicationRecord
    validates :name
    validates 
    has_many :signups

    has_many :activities
end

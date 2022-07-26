class Camper < ApplicationRecord
    validates :name
    validates :age, 
    has_many :signups

    has_many :activities
end

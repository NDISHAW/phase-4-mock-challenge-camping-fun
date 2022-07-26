class Camper < ApplicationRecord
    validates :name
    validates :age, numericality: { in: 8..18 }
    has_many :signups

    has_many :activities
end

class Camper < ApplicationRecord
    validates :name
    validates :age, numericality: { in: 18..65 }
    has_many :signups

    has_many :activities
end

class Camper < ApplicationRecord
    validates :name
    validates :age, l
    has_many :signups

    has_many :activities
end

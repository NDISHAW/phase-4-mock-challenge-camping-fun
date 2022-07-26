class Camper < ApplicationRecord
    validates :name, :age
    has_many :signups

    has_many :activities
end

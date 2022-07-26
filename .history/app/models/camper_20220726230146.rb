class Camper < ApplicationRecord
    validates :name
    has_many :signups

    has_many :activities
end

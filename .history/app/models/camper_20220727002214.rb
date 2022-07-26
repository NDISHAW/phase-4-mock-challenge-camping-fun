class Camper < ApplicationRecord
    validates :name, presence: true
    validates :age, inclusion: { in: 8..18 }

    has_many :signups, dependent: :destroy

    has_many  :activities, through: :signups
end

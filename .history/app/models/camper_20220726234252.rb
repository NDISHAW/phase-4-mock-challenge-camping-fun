class Camper < ApplicationRecord
    validates :name, presence: :true
    validates :age, numericality: { in: 8..18 }
    
    has_many  :activities, through::signups

    has_many :activities, dependent: :destroy
end

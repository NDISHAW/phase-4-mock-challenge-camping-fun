class Signup < ApplicationRecord
    validates :time, numericality: { in: 0..18 }
    belongs_to :camper
    
    belongs_to :activity
end

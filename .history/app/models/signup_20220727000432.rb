class Signup < ApplicationRecord
    validates, numericality: { in: 8..18 }
    belongs_to :camper
    
    belongs_to :activity
end

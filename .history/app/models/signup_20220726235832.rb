class Signup < ApplicationRecord
    belongs_to :camper
    
    belongs_to :activities
end

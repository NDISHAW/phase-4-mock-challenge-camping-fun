class Signup < ApplicationRecord
    belongs_to :camper
    
    belongs :activities
end

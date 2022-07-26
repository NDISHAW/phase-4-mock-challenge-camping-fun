class Signup < ApplicationRecord
    belongs_to :Camper
    
    belongs_to :activities
end

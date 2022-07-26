class Signup < ApplicationRecord
    belongs_to :camper
    
    has_many :activities
end

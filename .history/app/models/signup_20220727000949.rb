class Signup < ApplicationRecord
    validates :time
    belongs_to :camper
    
    belongs_to :activity
end

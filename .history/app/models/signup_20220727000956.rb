class Signup < ApplicationRecord
    validates :time, presence: true
    belongs_to :camper
    
    belongs_to :activity
end

class Signup < ApplicationRecord
    validates :time, numericality: { in: 0..23 }
    validates :time, presence: :true
    belongs_to :camper
    
    belongs_to :activity
end

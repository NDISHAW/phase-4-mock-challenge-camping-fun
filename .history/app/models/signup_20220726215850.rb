class Signup < ApplicationRecord
    belongs_to :ca
    has_many :activities
end

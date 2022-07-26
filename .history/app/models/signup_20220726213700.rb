class Signup < ApplicationRecord
    belongs_to :campers

    has_many :activities
end

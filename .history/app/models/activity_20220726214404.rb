class Activity < ApplicationRecord
    has_many :signups
    has_many :activities through, 
end

class Activity < ApplicationRecord
    has_many :signups, dependent: :destroy
    
end

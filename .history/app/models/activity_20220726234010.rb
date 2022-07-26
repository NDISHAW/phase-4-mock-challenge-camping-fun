class Activity < ApplicationRecord
    has_many :signups, dependent: :destroy
    has_
end

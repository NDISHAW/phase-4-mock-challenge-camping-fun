class SignupSerializer < ActiveModel::Serializer
  attributes :id, :camper_id, :activity_id, :time

  has_many :campers
  has_many 
end

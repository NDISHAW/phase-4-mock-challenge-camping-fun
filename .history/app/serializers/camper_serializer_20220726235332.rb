class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :dificulty

  has_many :signups
  has_many :
end

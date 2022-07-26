class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :dificulty

  has_many :signu
  has_many :
end

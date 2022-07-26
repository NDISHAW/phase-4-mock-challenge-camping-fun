class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  belongs
end

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :postcode, :name

  has_many :trails
end

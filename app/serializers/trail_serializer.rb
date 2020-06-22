class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :length, :level, :description, :location_id

  belongs_to :location
end

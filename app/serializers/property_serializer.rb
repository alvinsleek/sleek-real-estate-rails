class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :location, :price, :type_of_house, :category
  has_many :bookings
end

class BookingSerializer < ActiveModel::Serializer
  attributes :id, :phone_number, :move_in_date
  has_one :user
  has_one :property
end

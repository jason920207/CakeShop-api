class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :customer
  has_one :product
end

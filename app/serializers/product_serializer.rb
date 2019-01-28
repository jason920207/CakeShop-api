class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :picture, :price, :allergen
end

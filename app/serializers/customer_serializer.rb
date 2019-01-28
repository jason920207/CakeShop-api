class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :password, :phone
end

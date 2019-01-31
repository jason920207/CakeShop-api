# @Author: xiaojiezhang
# @Date:   2019-01-29T09:21:26-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T15:06:43-05:00



class OrderSerializer < ActiveModel::Serializer
  attributes :id, :amount, :user, :updated_at
  has_one :customer
  has_one :product
end

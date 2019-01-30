# @Author: xiaojiezhang
# @Date:   2019-01-29T09:21:26-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-29T13:29:02-05:00



class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :customer
  has_one :product
end

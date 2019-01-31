# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T09:10:40-05:00



class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :password, :phone,:user, :orders
end

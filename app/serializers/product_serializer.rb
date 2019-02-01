# @Author: xiaojiezhang
# @Date:   2019-01-29T09:17:58-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-02-01T08:52:19-05:00



class ProductSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :picture, :price, :allergen, :user, :category
end

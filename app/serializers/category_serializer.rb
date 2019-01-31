# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T19:59:02-05:00



class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :products,:updated_at
end

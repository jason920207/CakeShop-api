# @Author: xiaojiezhang
# @Date:   2019-01-28T06:38:41-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-28T06:56:45-05:00



class Category < ApplicationRecord
  has_many :products
end

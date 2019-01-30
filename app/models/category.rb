# @Author: xiaojiezhang
# @Date:   2019-01-28T06:38:41-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T06:34:51-05:00



class Category < ApplicationRecord
  belongs_to :user
  has_many :products
end

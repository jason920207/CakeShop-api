# @Author: xiaojiezhang
# @Date:   2019-01-28T06:38:41-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T20:40:58-05:00



class Category < ApplicationRecord
  has_many :products
  belongs_to :user
end

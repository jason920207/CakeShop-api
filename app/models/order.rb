# @Author: xiaojiezhang
# @Date:   2019-01-29T09:21:26-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T06:35:09-05:00



class Order < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :product
end

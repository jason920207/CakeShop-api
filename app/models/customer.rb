# @Author: xiaojiezhang
# @Date:   2019-01-28T06:35:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T06:34:48-05:00



class Customer < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :products, through: :orders
end

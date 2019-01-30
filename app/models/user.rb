# @Author: xiaojiezhang
# @Date:   2018-10-02T19:52:46-04:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-29T15:54:05-05:00



# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :customers
  has_many :products
  has_many :categories
  has_many :orders
end

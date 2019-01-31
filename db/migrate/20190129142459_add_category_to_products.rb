# @Author: xiaojiezhang
# @Date:   2019-01-30T08:05:51-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T10:10:33-05:00



class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :category, foreign_key: true
  end
end

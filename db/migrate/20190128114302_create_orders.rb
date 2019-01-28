# @Author: xiaojiezhang
# @Date:   2019-01-28T06:43:02-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-28T06:44:21-05:00



class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :product, index: true,  foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end

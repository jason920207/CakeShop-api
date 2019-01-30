# @Author: xiaojiezhang
# @Date:   2019-01-29T09:21:26-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-29T15:10:42-05:00



class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.references :product, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end

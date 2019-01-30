# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-29T15:40:35-05:00



class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email ,null: false
      t.string :username,null: false
      t.string :password,null: false
      t.string :phone,null: false

      t.timestamps
    end
  end
end

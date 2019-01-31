# @Author: xiaojiezhang
# @Date:   2019-01-29T09:17:58-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T10:24:20-05:00



class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name,null: false
      t.string :description,null: false
      t.string :picture,null: false
      t.integer :price,null: false
      t.string :allergen,null: false

      t.timestamps
    end
  end
end

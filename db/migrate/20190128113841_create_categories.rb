# @Author: xiaojiezhang
# @Date:   2019-01-28T18:03:06-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-29T15:40:39-05:00



class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name,null: false

      t.timestamps
    end
  end
end

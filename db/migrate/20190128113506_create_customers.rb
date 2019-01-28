class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :phone

      t.timestamps
    end
  end
end

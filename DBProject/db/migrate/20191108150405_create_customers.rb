class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.integer :Customerid
      t.string :firstname
      t.string :lastname
      t.string :customeremail
      t.string :phonenumber
      t.integer :addressid

      t.timestamps
    end
  end
end

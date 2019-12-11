class CreateVendorProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_products do |t|
      t.integer :productid
      t.string :producttype

      t.timestamps
    end
  end
end

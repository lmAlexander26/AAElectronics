class CreateVendorPos < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_pos do |t|
      t.integer :PurchaseOrder
      t.integer :productid

      t.timestamps
    end
  end
end

class CreateVendorPos < ActiveRecord::Migration[6.0]
  def change
    create_table :vendor_pos do |t|
      t.integer :PurchaseOrder

      t.timestamps
    end
  end
end

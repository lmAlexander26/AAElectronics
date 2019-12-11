class CreateVendorProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :vendor_products do |t|
      t.string :producttype

      t.timestamps
    end
  end
end

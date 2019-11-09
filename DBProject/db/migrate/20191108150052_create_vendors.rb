class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :vendorname
      t.integer :Vendorid

      t.timestamps
    end
  end
end

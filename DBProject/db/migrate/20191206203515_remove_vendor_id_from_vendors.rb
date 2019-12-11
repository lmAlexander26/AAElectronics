class RemoveVendorIdFromVendors < ActiveRecord::Migration[5.1]
  def change
    remove_column :vendors, :Vendorid, :int
  end
end

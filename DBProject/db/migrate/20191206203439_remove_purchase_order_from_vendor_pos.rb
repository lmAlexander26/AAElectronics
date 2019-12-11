class RemovePurchaseOrderFromVendorPos < ActiveRecord::Migration[5.1]
  def change
    remove_column :vendor_pos, :PurchaseOrder, :int
  end
end

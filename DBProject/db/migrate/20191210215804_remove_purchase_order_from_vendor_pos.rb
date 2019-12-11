class RemovePurchaseOrderFromVendorPos < ActiveRecord::Migration[6.0]
  def change

    remove_column :vendor_pos, :PurchaseOrder, :int
  end
end

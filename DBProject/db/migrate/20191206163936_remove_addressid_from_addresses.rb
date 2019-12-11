class RemoveAddressidFromAddresses < ActiveRecord::Migration[5.1]
  def change
    remove_column :addresses, :Addressid, :int
  end
end

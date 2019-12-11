class RemoveCustomeridFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :Customerid, :int
  end
end

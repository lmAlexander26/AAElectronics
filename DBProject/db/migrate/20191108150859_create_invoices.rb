class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :InvoiceNumber
      t.string :username
      t.integer :customerid
      t.integer :addressid
      t.integer :productid

      t.timestamps
    end
  end
end

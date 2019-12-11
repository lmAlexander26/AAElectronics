class RemoveInvoiceNumberFromInvoices < ActiveRecord::Migration[5.1]
  def change
    remove_column :invoices, :InvoiceNumber, :int
  end
end

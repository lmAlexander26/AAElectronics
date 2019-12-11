json.extract! invoice, :id, :InvoiceNumber, :username, :customerid, :addressid, :productid, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)

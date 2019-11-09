json.extract! customer, :id, :Customerid, :firstname, :lastname, :customeremail, :phonenumber, :addressid, :created_at, :updated_at
json.url customer_url(customer, format: :json)

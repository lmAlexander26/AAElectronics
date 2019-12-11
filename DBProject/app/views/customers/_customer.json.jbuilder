json.extract! customer, :id, :firstname, :lastname, :customeremail, :phonenumber, :addressid, :created_at, :updated_at
json.url customer_url(customer, format: :json)

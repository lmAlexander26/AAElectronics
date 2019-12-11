json.extract! employee, :id, :firstname, :lastname, :department, :role, :addressid, :created_at, :updated_at
json.url employee_url(employee, format: :json)

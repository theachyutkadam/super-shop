json.extract! customer, :id, :first_name, :middle_name, :last_name, :contact, :birthdate, :gender, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)

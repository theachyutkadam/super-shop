json.extract! bill, :id, :customer_id, :cart_id, :total, :payment_type, :recieve, :created_at, :updated_at
json.url bill_url(bill, format: :json)

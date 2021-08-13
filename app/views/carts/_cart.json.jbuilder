json.extract! cart, :id, :product_id, :customer_id, :price, :unit, :created_at, :updated_at
json.url cart_url(cart, format: :json)

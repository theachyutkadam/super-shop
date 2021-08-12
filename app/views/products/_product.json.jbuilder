json.extract! product, :id, :name, :measure, :rate, :code, :category, :discount, :created_at, :updated_at
json.url product_url(product, format: :json)

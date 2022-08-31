json.extract! product, :id, :name, :description, :price, :diary_free, :gluten_free, :kosher, :peanut_free, :vegan, :vegeterian, :available, :catering, :featured, :created_at, :updated_at
json.url product_url(product, format: :json)

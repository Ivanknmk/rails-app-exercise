json.array!(@products) do |product|
  json.extract! product, :id, :product_category_id, :sku, :name, :price
  json.url product_url(product, format: :json)
end

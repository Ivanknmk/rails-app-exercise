json.array!(@purchase_items) do |purchase_item|
  json.extract! purchase_item, :id, :purchase_id, :product, :references, :amount
  json.url purchase_item_url(purchase_item, format: :json)
end

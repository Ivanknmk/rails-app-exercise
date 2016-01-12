json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :purchase_no, :client_id
  json.url purchase_url(purchase, format: :json)
end

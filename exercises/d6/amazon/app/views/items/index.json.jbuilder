json.array!(@items) do |item|
  json.extract! item, :id, :name, :retailer, :stock, :price
  json.url item_url(item, format: :json)
end

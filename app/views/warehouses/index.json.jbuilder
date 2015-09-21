json.array!(@warehouses) do |warehouse|
  json.extract! warehouse, :id, :stock, :product_name
  json.url warehouse_url(warehouse, format: :json)
end

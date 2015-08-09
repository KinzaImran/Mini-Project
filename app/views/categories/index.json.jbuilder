json.array!(@categories) do |category|
  json.extract! category, :id, :c_id, :description
  json.url category_url(category, format: :json)
end

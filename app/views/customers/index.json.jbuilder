json.array!(@customers) do |customer|
  json.extract! customer, :id, :c_id, :name, :company_name, :address
  json.url customer_url(customer, format: :json)
end

json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :s_id, :name, :company_name, :region
  json.url supplier_url(supplier, format: :json)
end

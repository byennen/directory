json.array!(@categories) do |category|
  json.extract! category, :name
  json.url admin_category_url(category, format: :json)
end

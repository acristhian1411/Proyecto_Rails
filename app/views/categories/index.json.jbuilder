json.array!(@categories) do |category|
  json.extract! category, :id, :descripcion
  json.url category_url(category, format: :json)
end

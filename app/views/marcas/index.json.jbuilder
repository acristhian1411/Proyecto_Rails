json.array!(@marcas) do |marca|
  json.extract! marca, :id, :descrip
  json.url marca_url(marca, format: :json)
end

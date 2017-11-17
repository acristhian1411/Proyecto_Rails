json.array!(@products) do |product|
  json.extract! product, :id, :descripcion, :cantidad, :cod_bar, :precio_costo, :precio_venta, :sub_category_id, :marca_id
  json.url product_url(product, format: :json)
end

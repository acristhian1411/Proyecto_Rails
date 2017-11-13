json.array!(@marca_proveedors) do |marca_proveedor|
  json.extract! marca_proveedor, :id, :marca_id, :proveedore_id
  json.url marca_proveedor_url(marca_proveedor, format: :json)
end

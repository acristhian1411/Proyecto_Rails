json.array!(@proveedores) do |proveedore|
  json.extract! proveedore, :id, :nombre, :ruc, :contacto, :direccion
  json.url proveedore_url(proveedore, format: :json)
end

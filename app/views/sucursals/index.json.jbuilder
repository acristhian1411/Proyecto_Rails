json.array!(@sucursals) do |sucursal|
  json.extract! sucursal, :id, :nombre, :direccion, :localidad, :telefono, :email
  json.url sucursal_url(sucursal, format: :json)
end

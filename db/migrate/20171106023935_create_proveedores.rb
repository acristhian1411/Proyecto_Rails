class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :nombre
      t.string :ruc
      t.string :contacto
      t.string :direccion

      t.timestamps null: false
    end
  end
end

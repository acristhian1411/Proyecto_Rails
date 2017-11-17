class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :descripcion
      t.integer :cantidad
      t.string :cod_bar
      t.float :precio_costo
      t.float :precio_venta
      t.references :sub_category, index: true, foreign_key: true
      t.references :marca, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

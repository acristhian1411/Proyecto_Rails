class CreateMarcaProveedors < ActiveRecord::Migration
  def change
    create_table :marca_proveedors do |t|
      t.references :marca, index: true, foreign_key: true
      t.references :proveedore, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

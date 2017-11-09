class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :descrip

      t.timestamps null: false
    end
  end
end

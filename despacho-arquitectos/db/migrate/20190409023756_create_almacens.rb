class CreateAlmacens < ActiveRecord::Migration[5.1]
  def change
    create_table :almacens do |t|
      t.string :nombre
      t.string :descripcion
      t.string :direccion
      t.string :codigo_postal
      t.string :ciudad
      t.string :estado_almacen
      t.string :pais

      t.timestamps
    end
  end
end

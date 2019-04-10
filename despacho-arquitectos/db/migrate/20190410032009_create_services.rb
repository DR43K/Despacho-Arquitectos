class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :idservicio
      t.string :etiquetaservicio
      t.string :estadoventa
      t.string :estadocompra
      t.text :descripcion
      t.integer :duracion
      t.float :precioventa
      t.float :precioventamin
      t.string :categoria

      t.timestamps
    end
  end
end

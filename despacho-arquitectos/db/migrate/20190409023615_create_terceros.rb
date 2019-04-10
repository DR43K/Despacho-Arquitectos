class CreateTerceros < ActiveRecord::Migration[5.1]
  def change
    create_table :terceros do |t|
      t.string :nombre
      t.boolean :cliente
      t.boolean :proveedor
      t.string :direccion
      t.string :codigo_postal
      t.string :ciudad
      t.string :estado_provincia
      t.string :pais
      t.string :email
      t.string :sitio_web
      t.string :telefono
      t.string :rfc
      t.string :forma_juridica
      t.string :logo
      t.string :mapa
      t.string :estado_tercero

      t.timestamps
    end
  end
end

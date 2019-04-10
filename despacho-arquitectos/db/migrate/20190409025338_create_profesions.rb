class CreateProfesions < ActiveRecord::Migration[5.1]
  def change
    create_table :profesions do |t|
      t.integer :terceros_idterceros
      t.string :nombre_profesion
      t.string :cedula_profesional

      t.timestamps
    end
  end
end

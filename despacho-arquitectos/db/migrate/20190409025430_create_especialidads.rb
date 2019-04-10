class CreateEspecialidads < ActiveRecord::Migration[5.1]
  def change
    create_table :especialidads do |t|
      t.integer :terceros_idterceros
      t.string :nombre_especialidad
      t.integer :anios_experiencia

      t.timestamps
    end
  end
end

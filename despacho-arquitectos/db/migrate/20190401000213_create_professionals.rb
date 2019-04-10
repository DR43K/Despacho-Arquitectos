class CreateProfessionals < ActiveRecord::Migration[5.1]
  def change
    create_table :professionals do |t|
      t.string :nombre
      t.string :domicilio
      t.string :telefono
      t.string :correo
      t.string :pagina
      t.string :skype
      t.string :carrera
      t.string :grado
      t.string :especialidad
      t.string :experiencia
      t.string :obras

      t.timestamps
    end
  end
end

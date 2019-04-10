class AddColumnEspecialidadesToProfesion < ActiveRecord::Migration[5.1]
  def change
    add_column :profesions, :especialidades, :string
  end
end

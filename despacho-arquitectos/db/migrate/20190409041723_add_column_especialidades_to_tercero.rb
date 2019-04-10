class AddColumnEspecialidadesToTercero < ActiveRecord::Migration[5.1]
  def change
    add_column :terceros, :especialidades, :string
  end
end

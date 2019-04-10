class AddColumApellidoToProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :apellido, :string
  end
end

class AddColumnProfesionesToTercero < ActiveRecord::Migration[5.1]
  def change
    add_column :terceros, :profesiones, :string
  end
end

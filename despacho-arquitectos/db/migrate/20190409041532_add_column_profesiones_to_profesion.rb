class AddColumnProfesionesToProfesion < ActiveRecord::Migration[5.1]
  def change
    add_column :profesions, :profesiones, :string
  end
end

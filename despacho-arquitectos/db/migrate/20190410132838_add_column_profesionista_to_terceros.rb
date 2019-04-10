class AddColumnProfesionistaToTerceros < ActiveRecord::Migration[5.1]
  def change
    add_column :terceros, :profesionista, :boolean
  end
end

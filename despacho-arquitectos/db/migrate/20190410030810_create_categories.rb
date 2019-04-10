class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.integer :idcategorias
      t.string :nombre

      t.timestamps
    end
  end
end

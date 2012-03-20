class CreateProyectPositions < ActiveRecord::Migration
  def change
    create_table :proyect_positions do |t|
      t.string :name
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end

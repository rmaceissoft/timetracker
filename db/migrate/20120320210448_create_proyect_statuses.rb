class CreateProyectStatuses < ActiveRecord::Migration
  def change
    create_table :proyect_statuses do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end

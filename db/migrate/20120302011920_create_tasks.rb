class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.datetime :date_add
      t.decimal :hours, :precision => 9, :scale => 2
      t.references :proyect
      t.boolean :is_billable

      t.timestamps
    end
    add_index :tasks, :proyect_id
  end
end

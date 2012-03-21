class CreateProyectUsers < ActiveRecord::Migration
  def change
    create_table :proyect_users do |t|
      t.integer :proyect_id
      t.integer :user_id
      t.integer :proyect_position_id
      t.decimal :estimate_hours, :precision => 8, :scale => 2
      t.decimal :rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end

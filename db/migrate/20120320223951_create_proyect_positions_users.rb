class CreateProyectPositionsUsers < ActiveRecord::Migration
  def change
    create_table :proyect_positions_users, :id => false do |t|
      t.integer :proyect_position_id
      t.integer :user_id
    end
  end

end

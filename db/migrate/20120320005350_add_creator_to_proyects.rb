class AddCreatorToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :creator_id, :integer, :reference => "users"

    add_index :proyects, :creator_id

  end
end

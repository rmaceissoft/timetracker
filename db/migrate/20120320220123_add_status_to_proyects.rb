class AddStatusToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :status_id, :integer, :reference => "proyect_statuses"

    add_index :proyects, :status_id
  end
end

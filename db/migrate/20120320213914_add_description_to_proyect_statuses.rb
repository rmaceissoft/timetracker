class AddDescriptionToProyectStatuses < ActiveRecord::Migration
  def change
    add_column :proyect_statuses, :description, :text

  end
end

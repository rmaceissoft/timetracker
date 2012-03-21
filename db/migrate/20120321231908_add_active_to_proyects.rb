class AddActiveToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :active, :boolean, :default => true

  end
end

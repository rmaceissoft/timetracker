class AddInternalToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :internal, :boolean, :default => false

  end
end

class AddInvoiceCycleToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :invoice_cycle_id, :integer, :reference => "proyects"

    add_index :proyects, :invoice_cycle_id
  end
end

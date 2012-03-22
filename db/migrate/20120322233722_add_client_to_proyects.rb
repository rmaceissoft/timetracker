class AddClientToProyects < ActiveRecord::Migration
  def change
    add_column :proyects, :client_id, :integer, :reference => "clients"
    add_column :proyects, :end_customer_id, :integer, :reference => "end_customers"

    add_index :proyects, :client_id
    add_index :proyects, :end_customer_id

  end
end

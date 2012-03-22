class CreateEndCustomers < ActiveRecord::Migration
  def change
    create_table :end_customers do |t|
      t.string :company_name
      t.string :initials
      t.boolean :active
      t.references :client

      t.timestamps
    end
  end
end

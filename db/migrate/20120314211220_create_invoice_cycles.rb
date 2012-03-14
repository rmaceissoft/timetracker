class CreateInvoiceCycles < ActiveRecord::Migration
  def change
    create_table :invoice_cycles do |t|
      t.string :cycle

      t.timestamps
    end
  end
end

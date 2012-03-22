class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :initials
      t.string :company_name
      t.string :email
      t.string :phone
      t.string :state
      t.string :city
      t.string :zip_code
      t.text :address
      t.string :country
      t.boolean :active

      t.timestamps
    end
  end
end

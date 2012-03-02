class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

class AddCreatorToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :creator_id, :integer, :reference => "users"

    add_index :tasks, :creator_id

  end
end

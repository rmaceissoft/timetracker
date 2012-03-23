class AddStatusToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :status, :string, :limit => 2

    add_index :tasks, :status

  end
end

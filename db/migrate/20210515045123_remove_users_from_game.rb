class RemoveUsersFromGame < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :users, :text
  end
end

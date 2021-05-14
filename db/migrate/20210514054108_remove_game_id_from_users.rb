class RemoveGameIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :game_id, :integer
  end
end

class RemoveScoreFromGamesUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :games_users, :score, :integer
  end
end

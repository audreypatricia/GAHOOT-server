class AddScoreToGamesUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :games_users, :score, :integer
  end
end

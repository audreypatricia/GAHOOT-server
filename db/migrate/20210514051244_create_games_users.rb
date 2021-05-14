class CreateGamesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :games_users, :id => false do |t|
      t.integer :game_id
      t.integer :user_id
    end
  end
end

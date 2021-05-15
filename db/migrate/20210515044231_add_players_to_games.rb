class AddPlayersToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :players, :text, array:true, default: []

  end
end

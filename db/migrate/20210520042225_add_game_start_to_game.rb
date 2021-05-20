class AddGameStartToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :gameStart, :boolean, default: false 
  end
end

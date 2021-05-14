class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|
      t.integer :game_id
      t.boolean :guess
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :quiz_id
      t.text :pin
      t.text :users, array:true, default: []

      t.timestamps
    end
  end
end

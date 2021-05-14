class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :game_id
      t.text :password
      t.text :username
      t.boolean :host, default: false

      t.timestamps
    end
  end
end

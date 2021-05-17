class AddPinAndScoreToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pin, :text
    add_column :users, :score, :integer
  end
end

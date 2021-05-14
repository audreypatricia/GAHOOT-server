class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.text :category
      t.text :title
      t.integer :user_id

      t.timestamps
    end
  end
end

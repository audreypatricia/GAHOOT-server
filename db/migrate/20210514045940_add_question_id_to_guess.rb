class AddQuestionIdToGuess < ActiveRecord::Migration[5.2]
  def change
    add_column :guesses, :question_id, :integer
  end
end

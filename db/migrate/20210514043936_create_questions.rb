class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.text :question
      t.text :image
      t.text :answer_options, array:true, default: []

      t.timestamps
    end
  end
end

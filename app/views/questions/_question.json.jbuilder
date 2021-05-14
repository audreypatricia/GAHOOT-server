json.extract! questions, :id, :quiz_id, :question, :image, :answer_options, :created_at, :updated_at

json.quiz questions.quiz

json.url questions_url(questions, format: :json)

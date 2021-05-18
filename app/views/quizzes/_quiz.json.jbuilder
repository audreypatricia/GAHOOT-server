json.extract! quiz, :id, :category, :title, :user_id, :created_at, :updated_at

json.user quiz.user
json.questions quiz.questions

json.url quiz_url(quiz, format: :json)

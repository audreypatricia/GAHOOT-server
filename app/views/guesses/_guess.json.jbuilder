json.extract! guess, :id, :game_id, :guess, :user_id, :created_at, :updated_at, :question_id

json.game guess.game
json.user guess.user
json.question guess.question

json.url guess_url(guess, format: :json)

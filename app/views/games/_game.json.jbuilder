json.extract! game, :id, :quiz_id, :pin, :users, :created_at, :updated_at

json.quiz game.quiz

json.url game_url(game, format: :json)

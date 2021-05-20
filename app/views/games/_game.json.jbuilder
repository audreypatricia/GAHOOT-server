json.extract! game, :id, :quiz_id, :pin, :players, :gameStart, :created_at, :updated_at

json.quiz game.quiz

json.url game_url(game, format: :json)

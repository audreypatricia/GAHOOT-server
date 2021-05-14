json.extract! user, :id, :password, :username, :host, :created_at, :updated_at

json.url user_url(user, format: :json)

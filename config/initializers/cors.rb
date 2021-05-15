Rails.application.config.middleware.insert_before 0, Rack::Cors do 
    allow do
      origins 'http://localhost:3000', 'http://localhost:3001', 'https://gahoot-client.herokuapp.com/*' ##this needs an explicit list of your URLs on heroku

      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
  end

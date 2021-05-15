Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*', 'https://git.heroku.com/gahoot-client.git' # this needs an explicit list of your URLs on Heroku
    resource '*',
      :headers => :any,
      :methods => %i( get post put patch delete options head )
  end
end

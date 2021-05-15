if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: 'gahoot', domain: 'https://gahoot-client.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: 'gahoot'
end

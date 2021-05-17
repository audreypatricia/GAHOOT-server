if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: 'gahoot', domain: 'gahoot-client.herokuapp.com', secure:true
else
  Rails.application.config.session_store :cookie_store, key: 'gahoot'
end

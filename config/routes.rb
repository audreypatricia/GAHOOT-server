Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  get '/users/check' => 'users#check'
  get '/users/:id/getQuiz' => 'users#getQuiz'

  resources :guesses
  resources :games
  resources :users
  resources :questions
  resources :quizzes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

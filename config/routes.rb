Rails.application.routes.draw do
  resources :guesses
  resources :games
  resources :users
  resources :questions
  resources :quizzes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

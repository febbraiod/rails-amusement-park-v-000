Rails.application.routes.draw do

  resources :users
  resources :attractions

  root to: 'application#landing'

  get '/signin' => 'sessions#signin'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  post '/ride' => "attractions#ride"


end
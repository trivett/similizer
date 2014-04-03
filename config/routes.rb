Similizer::Application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users

  root to: "welcome#index"

  get "/artist", to: "welcome#artist"
  get "/:artist", to: "welcome#show"
end


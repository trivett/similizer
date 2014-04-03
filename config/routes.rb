Similizer::Application.routes.draw do

  root to: "welcome#index"

  get "/:artist", to: "welcome#show"

end

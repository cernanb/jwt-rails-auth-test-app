Rails.application.routes.draw do

  post '/api/v1/users', to: 'api/v1/users#signup'
  post '/api/v1/login', to: 'api/v1/sessions#login'
  get '/api/v1/games', to: 'api/v1/games#index'
end

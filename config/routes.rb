Rails.application.routes.draw do
  root 'application#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  post '/auth/:provider/callback', to: 'sessions#omniauth'
end

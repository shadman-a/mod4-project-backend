Rails.application.routes.draw do
  resources :jellyfishes
  resources :catches
  resources :jellyfish_nets
  resources :characters
  resources :game_plays

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index, :update]
end

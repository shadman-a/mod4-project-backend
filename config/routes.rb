Rails.application.routes.draw do
  resources :jellyfishes
  resources :catches
  resources :jellyfish_nets
  resources :characters
  resources :game_plays
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :jellyfishes
  resources :catches
  resources :jellyfish_nets
  resources :characters
  resources :game_plays
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

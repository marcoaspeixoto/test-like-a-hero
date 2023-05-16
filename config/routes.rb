Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :weapons
  resources :enemies, only: [:update, :destroy]
end

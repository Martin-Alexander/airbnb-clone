Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'

  resources :flats, only: [:show]
end

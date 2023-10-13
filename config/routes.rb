Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  resources :styles

  devise_for :users
end

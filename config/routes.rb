Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  resources :styles

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get '/users/sign_up' => 'devise/registrations#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

Rails.application.routes.draw do
  root to: 'home#index'
  resources :styles

  namespace :users do
    resource :profile, only: [:show, :edit, :update], controller: 'profile'
    resource :account, only: :show, controller: 'account'
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end

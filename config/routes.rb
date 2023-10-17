# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'

  resources :styles do
    get :own, on: :collection
  end

  namespace :users do
    resource :profile, only: %i[show edit update], controller: 'profile'
    resource :account, only: :show, controller: 'account'
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end

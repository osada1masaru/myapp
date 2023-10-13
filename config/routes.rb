Rails.application.routes.draw do
  get 'stylas/index'
  get 'stylas/show'

  devise_for :users
end

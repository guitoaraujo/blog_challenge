Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'posts#index'
  resources :posts
  resources :comments, only: [:create]
  devise_for :users
end

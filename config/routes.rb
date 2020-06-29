Rails.application.routes.draw do
  get 'users/show'
  get 'district/show'
  root 'static_pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :gyms, only:[:show, :index] do
    resources :comments, only: %i[create edit update destroy], module: :gyms
  end

  resources :categories, only:[:show, :index] do
    resources :districts, only:[:show]
  end

  resources :trainers, only:[:index, :show] do
    resources :comments, only: %i[create edit update destroy], module: :trainers
    resources :likes, only: [:create, :destroy]
  end

  devise_for :users
  resources :users, only: [:show]
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

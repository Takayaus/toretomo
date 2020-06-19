Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :gyms, only:[:show, :index] do
    resources :item_images, only:[:index]
  end

  resources :categories, only:[:show]

  resources :trainers, only:[:index, :show]

  devise_for :users

  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

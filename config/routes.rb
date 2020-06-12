Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :gyms, only:[:show, :index] do
    resources :item_images, only:[:show]
  end

  devise_for :users

  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

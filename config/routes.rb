Rails.application.routes.draw do
  resources :gyms, only:[:index, :show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#home'
  devise_for :users
    devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

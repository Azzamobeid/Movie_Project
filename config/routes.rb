Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :crews
  resources :movies
  resources :ratings
  root 'movies#index'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

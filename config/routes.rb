Rails.application.routes.draw do

  #resources :abcdes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :categories
   resources :books
   resources :aurthors
   get 'about/index'
   root 'about#index'
end

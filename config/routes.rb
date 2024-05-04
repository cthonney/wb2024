Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {}

  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "contacts#new"
  get "policies", to: "pages#policies"

  resources :contacts, only: [:new, :create]
  get "blog", to: "pages#blog"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



end

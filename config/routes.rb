Rails.application.routes.draw do
  root "pages#dashboard"

  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  resources :users, only: [:show, :index, :create, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

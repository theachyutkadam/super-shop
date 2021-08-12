Rails.application.routes.draw do

  root :to => "sessions#new"

  get 'logout' => "sessions#destroy", :as => "log_out"
  # get 'log_in' => "sessions#new", :as => "log_in"
  # get 'sign_up' => "users#new", :as => "sign_up"

  resources :users
  resources :sessions
  resources :customers
end
Rails.application.routes.draw do

  resources :bills
  resources :carts
  root :to => "sessions#new"
  get 'logout' => "sessions#destroy", :as => "log_out"
  # get 'log_in' => "sessions#new", :as => "log_in"
  get 'sign_up' => "users#new", :as => "sign_up"

  resources :users
  resources :sessions
  resources :customers do
    member do
      get 'soft_delete' => 'customers#soft_delete'
    end
  end
  resources :products
end
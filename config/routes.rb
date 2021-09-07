Rails.application.routes.draw do

  resources :bills
  resources :carts
  # root :to => "pages#index"
  root :to => "sessions#new"
  get 'logout' => "sessions#destroy", :as => "log_out"
  get 'sign_up' => "users#new", :as => "sign_up"
  get 'index' => "pages#index"

  resources :users
  resources :sessions
  resources :customers do
    member do
      get 'soft_delete' => 'customers#soft_delete'
    end
  end
  resources :products
end
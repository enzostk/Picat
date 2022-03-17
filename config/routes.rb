Rails.application.routes.draw do
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  devise_for :users
  root to: "items#index"
  resources :items
end

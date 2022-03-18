Rails.application.routes.draw do
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  devise_for :users
  root to: "items#index"
  resources :items

  #route du système de paiement stripe
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    end

end



  
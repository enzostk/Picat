Rails.application.routes.draw do
  devise_for :users
  root to: "main#index"
  resources :items
end

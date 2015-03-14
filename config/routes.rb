Rails.application.routes.draw do
  root to: 'payments#index'

  resources :payments, except: [:show]
  devise_for :users
end

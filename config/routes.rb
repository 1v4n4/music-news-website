Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :votes, only: [:create, :destroy]
  resources :articles
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create', as: 'login_path'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'categories#index'
end

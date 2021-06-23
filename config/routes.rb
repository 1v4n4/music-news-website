Rails.application.routes.draw do
  resources :votes
  resources :articles
  resources :users
  get    'login',  to: 'sessions#new'
  post   'login',  to: 'sessions#create', as: "login_path"
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
end

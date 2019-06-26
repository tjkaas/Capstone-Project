Rails.application.routes.draw do
  get 'static_pages/home'

  resources :todo_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root   "users#home"
  get    '/users',        to: 'users#index' 
  get    '/users/edit',   to: 'users#edit'
  get    '/home',         to: 'users#home'
  get    '/signup',       to: 'users#new'
  get    'users/login',   to: 'sessions#new'
  post   'users/login',   to: 'sessions#create'
  delete 'users/logout',  to: 'sessions#destroy'
  resources :users


  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :projects,            only: [:create, :destroy]
  resources :following,           only: [:create, :destroy]
end
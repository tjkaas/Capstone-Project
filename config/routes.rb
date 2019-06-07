Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users',       to: 'users#index' 
  get '/users/new',   to: 'users#new'
  get '/users/edit',  to: 'users#edit'
  get '/users/login', to: 'users#login'
end

Dwellhop::Application.routes.draw do
  resources :users
  resources :homes
  resources :sessions, only: [:new, :create, :destroy]
  root  'static#home'
  match '/signup',  to: 'users#new',      via: 'get'
  match '/signin',  to: 'sessions#new',   via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/help',    to: 'static#help',    via: 'get'
  match '/about',   to: 'static#about',   via: 'get'

end

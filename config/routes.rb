Dwellhop::Application.routes.draw do
  
  get "users/new"

  root  'static#home'
  match '/signup',  to: 'users#new',      via: 'get'
  match '/help',    to: 'static#help',    via: 'get'
  match '/about',   to: 'static#about',   via: 'get'

end

TwitterApp::Application.routes.draw do
  get "users/new"
  root 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/help', to: 'static_pages#help', via: 'get'

  match '/signup', to:'users#new', via: 'get'
end

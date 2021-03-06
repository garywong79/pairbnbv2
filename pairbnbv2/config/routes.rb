Rails.application.routes.draw do
  
  root 'home#index'

  get "/signup", to: "users#new", as: "signup"
  resources :users, only: :create

  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get '/auth/facebook/callback', to: 'sessions#omniauth'
  get '/auth/failure', to: redirect('/')

  resources :lists

end

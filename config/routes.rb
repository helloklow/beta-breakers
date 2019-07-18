Rails.application.routes.draw do
  root 'sessions#home'

  get '/auth/google_oauth2/callback', to: 'sessions#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  delete '/logout', to: 'sessions#logout'

  resources :comments
  resources :rootes
  resources :users, except: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

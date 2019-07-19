Rails.application.routes.draw do
  root 'sessions#home'

  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :rootes do 
    resources :comments, except: [:index, :edit, :update]
  end 
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

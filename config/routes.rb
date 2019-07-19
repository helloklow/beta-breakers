Rails.application.routes.draw do
  root 'sessions#home'

  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'rootes/canyon'
  get 'rootes/boulder'
  get 'rootes/sport'
  get 'rootes/trad_aid'
  get 'rootes/ice_alpine'

  #get '/users/comments', to: 'users#comments'

  resources :users, only: [:show]
  resources :rootes do 
    resources :comments, except: [:edit, :update]
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

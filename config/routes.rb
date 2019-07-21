Rails.application.routes.draw do
  root 'sessions#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#logout'
  get '/auth/facebook/callback', to: 'sessions#create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'rootes/canyon'
  get 'rootes/boulder'
  get 'rootes/sport'
  get 'rootes/trad_aid'
  get 'rootes/ice_alpine'

  resources :users, only: [:show]
  resources :rootes do 
    resources :comments, except: [:edit, :update]
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

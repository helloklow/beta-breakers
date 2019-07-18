Rails.application.routes.draw do
  get '/', to: 'sessions#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'

  resources :comments
  resources :rootes
  resources :users, except: :new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/', to: 'sessions#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  resources :comments
  resources :rootes
  resources :users, except: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

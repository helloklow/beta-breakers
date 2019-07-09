Rails.application.routes.draw do
  resources :users

  get '/new', to: 'users#new', as: 'register'
  post '/new', to: 'users#create', as: 'register'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'trips#index'
  get '/welcome', to: 'static#welcome'

  get '/auth/github/callback', to: 'sessions#create_from_github'

  resources :trip_entries, only: [:show]
  resources :trips do 
    resources :trip_entries
  end

  resources :users, only: [:show]
  resources :locations, only: [:new, :create]

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

end

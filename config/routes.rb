Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#welcome'

  resources :trips do 
    resources :trip_entry, shallow: true
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

end

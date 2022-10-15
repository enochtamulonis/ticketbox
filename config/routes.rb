Rails.application.routes.draw do
  resource :auth, only: [:show, :create], controller: :auth, path: :login
  resource :registration, only: [:show, :create], controller: :registration
  resource :signout, only: [:destroy], controller: :signout

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

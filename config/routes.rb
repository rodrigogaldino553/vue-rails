Rails.application.routes.draw do
  get 'landing/index'
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "landing#index"
end

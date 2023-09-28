Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "links#index"
  resources :links
  resources :views, path: :v, only: [:show] # /v/:id
end

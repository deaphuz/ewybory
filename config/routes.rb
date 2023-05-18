Rails.application.routes.draw do
  #get 'public/index'
  root 'public#home'
  get "/login", to: "access#login"

  get "/elections", to: "elections#index"
  
  get "/candidates", to: "candidates#index"
  get "/candidates/new", to: "candidates#new"
  get "/candidates/:id", to: "candidates#show"
  
  get "/voters", to: "voters#index"
  get "/voters/new", to: "voters#new"
  get "/voters/:id", to: "voters#show"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#new"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#new"
  
  delete "logout", to: "sessions#destroy"

  resources :candidates
  resources :voters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

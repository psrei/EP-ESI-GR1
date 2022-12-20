Rails.application.routes.draw do
  
  root to: "essays#index"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :essays, only: [:index, :new, :create]
  resources :teachers, only: [:index, :show, :update]
  resources :users, only: [:index, :new, :create]
end

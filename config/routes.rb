  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
    resources :redacao, only: [:new, :create, :edit, :update, :show, :destroy]
    root 'redacao#new'
end

Rails.application.routes.draw do
    resources :bdr, only: [:edit, :update, :show, :destroy]
    #root 'bdr#view'
end

Rails.application.routes.draw do
    #root 'sessions#home', as: nil
    resources :users, only: [:new, :create, :edit, :update, :show, :destroy]

    get '/login', to: 'sessions#login'
    post '/login', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy'
    get '/logout', to: 'sessions#destroy'
end

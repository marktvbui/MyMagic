Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/users", to: "users#index"
  
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"

  get "users/:id", to: "users#show"
  get "users/:id/edit", to: "users#edit"

  patch "users/:id", to: "users#update"
  delete "users/:id", to: "users#destroy"

  # resources :users
  
  get "/cards", to: "cards#index"

  get "cards/new", to: "cards#new"
  post "cards", to: "cards#create"

  get "cards/:id", to: "cards#show"
  get "cards/:id/edit", to: "cards#edit"

  patch "cards/:id", to: "cards#update"
  delete "cards/:id", to: "cards#destroy"

  # resources :cards
end

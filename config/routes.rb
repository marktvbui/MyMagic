Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  # resources :users
  
  get "/cards", to: "cards#index"
  get "/cards/new", to: "cards#new"
  post "/cards", to: "cards#create"
  get "/cards/:id", to: "cards#show"
  get "/cards/:id/edit", to: "cards#edit"
  patch "/cards/:id", to: "cards#update"
  delete "/cards/:id", to: "cards#destroy"

  # resources :cards

  get "/collection_cards", to: "collection_cards#index"
  get "/collection_cards/new", to: "collection_cards#new"
  post "/collection_cards", to: "collection_cards#create"
  get "/collection_cards/:id", to: "collection_cards#show"
  get "/collection_cards/:id/edit", to: "collection_cards#edit"
  patch "/collection_cards/:id", to: "collection_cards#update"
  delete "/collection_cards/:id", to: "collection_cards#destroy"

  # resources :collections

end

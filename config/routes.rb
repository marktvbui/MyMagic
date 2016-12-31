Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/cards", to: "cards#index"
  get "/cards/:id", to: "cards#show"

  # resources :cards

  get "/collection_cards", to: "collection_cards#index"
  get "/collection_cards/new", to: "collection_cards#new"
  post "/collection_cards", to: "collection_cards#create"
  get "/collection_cards/:id", to: "collection_cards#show"
  get "/collection_cards/:id/edit", to: "collection_cards#edit"
  patch "/collection_cards/:id", to: "collection_cards#update"
  delete "/collection_cards/:id", to: "collection_cards#destroy"

  # resources :collections

  get "/decks", to: "decks#index"
  get "/decks/new", to: "decks#new"
  post "/decks", to: "decks#create"
  get "/decks/:id", to: "decks#show"
  get "/decks/:id/edit", to: "decks#edit"
  patch "/decks/:id", to: "decks#update"
  delete "/decks/:id", to: "decks#destroy"
  post "/search", to: "decks/search"

  get "/deck_cards", to: "deck_cards#index"
  get "/deck_cards/new", to: "deck_cards#new"
  post "/deck_cards", to: "deck_cards#create"
  get "/deck_cards/:id", to: "deck_cards#show"
  get "/deck_cards/:id/edit", to: "deck_cards#edit"
  patch "/deck_cards/:id", to: "deck_cards#update"
  delete "/deck_cards/:id", to: "deck_cards#destroy"

  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


end

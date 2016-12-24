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


  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout'}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }


end

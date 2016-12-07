class User < ApplicationRecord

  has_many :decks
  has_many :deck_cards, through: :decks

  has_many :collection_cards
  has_many :cards, through: :collection_cards

  has_many :wish_lists
  
end

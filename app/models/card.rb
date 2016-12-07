class Card < ApplicationRecord

  has_many :deck_cards
  has_many :wish_lists
  has_many :collection_cards
end

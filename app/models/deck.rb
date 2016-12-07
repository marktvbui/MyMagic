class Deck < ApplicationRecord

  belongs_to :user
  has_many :deck_cards
end

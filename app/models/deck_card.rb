# == Schema Information
#
# Table name: deck_cards
#
#  id         :integer          not null, primary key
#  card_id    :integer
#  deck_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DeckCard < ApplicationRecord

  belongs_to :deck

  def card
    return Card.find(card_id)
  end

  def self.sorted_by_type
    types = {
      "creature" => [], 
      "planeswalker" => [], 
      "artifact" => [], 
      "enchantment" => [], 
      "instant" => [], 
      "sorcery" => [], 
      "land" => [], 
    }
    all.each do |deckcard|
      current_card = deckcard.card
      types[deckcard.type[0]] << {card: deckcard, quantity: deckcard.quantity}
    end
    return types
  end
end

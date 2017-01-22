# == Schema Information
#
# Table name: collection_cards
#
#  id         :integer          not null, primary key
#  card_id    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CollectionCard < ApplicationRecord

  belongs_to :user

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
    all.each do |collection_card|
      current_card = collection_card.card
      types[current_card.type[0]] << {card: current_card, quantity: collection_card.quantity}
    end
    return types
  end
end

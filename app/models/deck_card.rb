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
end

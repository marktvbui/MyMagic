# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  card_id    :integer
#  card_type  :string
#  color      :string
#  mana_cost  :string
#  power      :integer
#  toughness  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Card < ApplicationRecord

  has_many :deck_cards
  has_many :wish_lists
  has_many :collection_cards
end

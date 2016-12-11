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

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: collection_cards
#
#  id         :integer          not null, primary key
#  card_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CollectionCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

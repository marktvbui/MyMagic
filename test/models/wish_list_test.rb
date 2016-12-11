# == Schema Information
#
# Table name: wish_lists
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  card_id      :integer
#  target_price :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class WishListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

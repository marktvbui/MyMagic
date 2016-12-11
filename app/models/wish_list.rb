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

class WishList < ApplicationRecord

  belongs_to :user
  belongs_to :card

end

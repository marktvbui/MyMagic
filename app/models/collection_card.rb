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

class CollectionCard < ApplicationRecord

  belongs_to :user

  
end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default("false")
#  last_name  :string
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :decks
  has_many :deck_cards, through: :decks

  has_many :collection_cards
  has_many :cards, through: :collection_cards

  has_many :wish_lists
  
end

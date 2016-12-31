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

  attr_accessor :name, :id, :type, :power, :toughness, :image_url

  def initialize(input)
    @name = input["name"]
    @id = input["id"]
    @type = input["type"]
    @power = input["power"]
    @toughness = input["toughness"]
    @image_url = input["image_url"]
  end

  def self.find(name)
    unirest_card = Unirest.get("#{ENV['API_URL']}/#{name}").body
    card = Card.new(unirest_card)
  end

  def self.all
    unirest_cards = Unirest.get("#{ENV['API_URL']}").body
    cards = []
    unirest_cards.each do |unirest_card|
      card = Card.new(unirest_card)
      cards << card
    end
    return cards
  end


end

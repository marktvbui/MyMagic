class Card

  attr_accessor :name, :id, :image_url

  def initialize(input)
    @name = input["name"]
    @id = input["id"]
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

class Card

  attr_accessor :name, :id, :image_url

  def initialize(input)
    @name = input["name"]
    @id = input["id"]
    @image_url = input["image_url"]
  end

  def self.convert_data(api_data)
    input_hash = {"id" => api_data["id"], "name" => api_data["name"], "image_url" => api_data["editions"][0]["image_url"]}
    return input_hash
  end
  def self.find(name)
    unirest_card = Unirest.get("#{ENV['API_URL']}/#{name}").body
    # input_hash = {"id" => unirest_card["id"], "name" => unirest_card["name"], "image_url" => unirest_card["editions"][0]["image_url"]}
    @card = Card.new(Card.convert_data(unirest_card))
    return @card
  end

  def self.all
    unirest_cards = Unirest.get("#{ENV['API_URL']}").body
    @cards = []
    unirest_cards.each do |unirest_card|
      card = Card.new(Card.convert_data(unirest_card))
      @cards << card
    end
    return @cards
  end

  def self.where(input_hash)
    param_string = ""
    input_hash.each do |key, value|
      param_string = param_string + "#{key}=#{value}&"
    end
    unirest_cards = Unirest.get("#{ENV['API_URL']}?" + param_string[0..-1]).body
    @cards = []
    unirest_cards.each do |unirest_card|
      card = Card.new(Card.convert_data(unirest_card))
      @cards << card
    end
    return @cards
  end

  def destroy
    card = Unirest.delete("#{ENV['API_URL']}/CARDS/#{:name}.json")
  end


end
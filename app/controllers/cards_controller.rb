class CardsController < ApplicationController
  
  def show
    @card = Card.find(name: params[:name])
  end

  def index
    @cards = Unirest.get("#{ENV['API_URL']}").body
  end


end

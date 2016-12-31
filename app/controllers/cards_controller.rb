class CardsController < ApplicationController
  
  def show
    @card = Card.find(params[:name])
  end

  def index
    @cards = Unirest.get("#{ENV['API_URL']}").body
  end


end

class CardsController < ApplicationController
  
  def show
    @card = Unirest.get("#{ENV['API_URL']}/#{params[:id]}").body
  end

  def index
    @cards = Unirest.get("#{ENV['API_URL']}").body
  end


end

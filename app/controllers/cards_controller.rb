class CardsController < ApplicationController
  
  def index
    @cards = Unirest.get("#{ENV['API_URL']}").body
  end

  def show
    @card = Unirest.get("#{ENV['API_URL']}?multiverseid=#{params[:id].to_i}").body
  end

end

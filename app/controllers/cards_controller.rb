class CardsController < ApplicationController
  
  def show
    @card = Unirest.get("#{ENV['API_URL']}/#{params[:id]}").body
  end

  def index
    @cards = Unirest.get("#{ENV['API_URL']}").body
  end

  def search
    @search_term = params[:name]
    @cards = Unirest.get("#{ENV['API_URL']}?name=#{@search_term}").body
    render :index
  end
end

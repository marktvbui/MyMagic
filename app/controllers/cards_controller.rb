class CardsController < ApplicationController
  
  def show
    @card = Card.find(params[:name])
  end

  def index
    @cards = Card.all
    @decks = current_user.decks
  end

  def search
    @cards = Card.where(name: params[:name])
    render :index
  end

  
end

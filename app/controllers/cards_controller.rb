class CardsController < ApplicationController
 before_action :authenticate_user!  
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

  def test
    @cards = Card.all
  end
  
end

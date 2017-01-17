class CardsController < ApplicationController
  
  def show
    @card = Card.find_by(params[:name])
  end

  def index
    @cards = Card.all
  end

  def search
    @cards = Card.where(name: params[:name])
    render :index
  end
end

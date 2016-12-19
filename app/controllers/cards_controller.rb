class CardsController < ApplicationController
  
  def index
    @cards = Unirest.get("http://api.deckbrew.com/mtg/cards").body
  end

  def new
    @cards = Card.new
  end

  def create
    @card = Card.new(card_type: params["card_type"],
                     color: params["color"],
                     mana_cost: params["mana_cost"],
                     power: params["power"],
                     toughness: params["toughness"])
    if @card.save
      flash[:success] = "Card has been added"
      render :index
    else
      render :create
    end
  end

  def show
    @card = Unirest.get("#{ENV['API_URL']}/#{params[:id]}.json").body
  end

  def edit
    @card = Card.find_by(id: params["id"])
  end

  def update
    @card = Card.find_by(id: params["id"])
    @card.assign_attributes(card_type: params["card_type"],
                     color: params["color"],
                     mana_cost: params["mana_cost"],
                     power: params["power"],
                     toughness: params["toughness"])
    if @card.save
      flash[:success] = "Card has been updated!"
      render :index
    else
      flash[:danger] = "Something went wrong...."
      render :edit
    end
  end

  def destroy
    @card = Card.find_by(id: params["id"])
    @card.delete
    render[:danger] = "Guess we won't be using that card anymore"
    redirect_to "/cards"
  end


end

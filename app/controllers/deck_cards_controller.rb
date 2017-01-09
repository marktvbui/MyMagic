class DeckCardsController < ApplicationController

  def index
    @deckcard = DeckCard.all
  end

  def new
    @deckcard = DeckCard.new
  end

  def create
    @deckcard = DeckCard.new{user.id :current_user}
    if @deckcard.save
      flash[:success] = "Card has been added to your Deck!"
      render :index
    else
      render :create
    end
  end
  
  def show
    @deckcard = DeckCard.find_by(id: params[:id])
  end

  def edit
    @deckcard = DeckCard.find_by(id: params[:id])
  end

  def update
    @deckcard = DeckCard.find_by(id: params[:id])
    @deckcard.assign_attributes(id: params["name"],
                                rarity: params["rarity"])
    @deckcard.save
    flash[:info] = "Current deck has been updated!"
    render :show
  end

  def destroy
    @deckcard = DeckCard.find_by(id: params[:id])
    @deckcard.delete
    flash[:danger] = "Good decision, you didn't need that card here!"
    redirect_to '/deck_cards'
  end

end

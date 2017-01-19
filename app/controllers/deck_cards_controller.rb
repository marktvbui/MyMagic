class DeckCardsController < ApplicationController

  def index
    @deckcard = current_user.decks.deckcard
  end

  def new
    @deckcard = DeckCard.new
  end

  def create
    @deckcard = DeckCard.find_or_initialize_by(
      deck_id: params[:deck][:id],
      card_id: params[:card_id],
      quantity: params[:quantity]
    )
    if @deckcard.save
      flash[:success] = "Card has been added to your Deck!"
      redirect_to "/decks"
    else
      puts @deckcard.errors.full_messages
      redirect_to "/cards"
    end
  end
  
  def show
    @deckcard = current_user.decks.deckcard
  end

  def edit
    @deckcard = DeckCard.find_by(id: params[:id])
  end

  def update
    @deckcard = DeckCard.find_by(id: params[:id])
    @deckcard.assign_attributes(name: params[:name],
                                )
    @deckcard.save
    flash[:info] = "Current deck has been updated!"
    render :show
  end

  def search
    @search_term = params[:name]
    @cards = Unirest.get("#{ENV['API_URL']}?name=#{@search_term}").body
    render :show
  end

  def destroy
    @deckcard = DeckCard.find_by(id: params[:id])
    @deckcard.delete
    flash[:danger] = "Good decision, you didn't need that card here!"
    redirect_to '/deck_cards'
  end

end

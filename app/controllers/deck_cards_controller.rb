class DeckCardsController < ApplicationController

  def index
    @deckcard = DeckCards.all
  end

  def new
    @deckcard = DeckCards.new
  end

  def create
    @deckcard = DeckCards.new{user.id :current_user}
    if @user.save
      flash[:success] = "User Account Created!"
      render :index
    else
      render :create
    end
  end
  
  def show
    @deckcard = DeckCards.find_by(id: params[:id])
  end

  def edit
    @deckcard = DeckCards.find_by(id: params[:id])
  end

  def update
    @deckcard = DeckCards.find_by(id: params[:id])
    @deckcard.assign_attributes(first_name: params["first_name"],
                           last_name: params["last_name"],
                           email: params["email"])
    @deckcard.save
    flash[:info] = "Current deck has been updated!"
    render :show
  end

  def destroy
    @deckcard = DeckCards.find_by(id: params[:id])
    @deckcard.delete
    flash[:danger] = "Useless card has been deleted"
    redirect_to '/deck_cards'
  end

end

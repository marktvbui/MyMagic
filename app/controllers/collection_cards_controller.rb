class CollectionCardsController < ApplicationController

  def index
    sort_colum = params[:sort]
    @collection_cards = current_user.collection_cards
  end

  def show
    @collection_cards = current_user.collection_cards
  end

  def new
    @collection_cards = current_user.collection_cards
  end

  def create 
    @collection_cards = CollectionCard.find_or_initialize_by(
                                                user_id: current_user.id,
                                                card_id: params[:card_id]
                                                             )
    if @collection_cards.id
      @collection_cards.quantity = @collection_cards.quantity + params[:quantity].to_i
    else
      @collection_cards.quantity = params[:quantity]
    end

    if @collection_cards.save
      flash[:success] = "Card has been added"
    else
      flash[:danger] = @collection_cards.errors.full_messages.join("<br>").html_safe
      redirect_to "/collection_cards"
    end
  end

  def createdroppable
    respond_to do |format|
      format.json  { render :json => "Api request received!" }

      @collection_cards = CollectionCard.find_or_initialize_by(
                                          user_id: current_user.id,
                                          card_id: params[:card_id]
                                                             )
      if @collection_cards.id
        @collection_cards.quantity = @collection_cards.quantity + params[:quantity].to_i
      else
        @collection_cards.quantity = params[:quantity]
      end

      if @collection_cards.save
        flash[:success] = "Card has been added"
      else
        flash[:danger] = @collection_cards.errors.full_messages.join("<br>").html_safe
        render "/collection_cards"
      end
    end
  end

  def edit
    @collection_cards = Card.find_by(id: params[:id])
  end

  def update
    @collection_cards = Card.find_by(id: params[:id])
    render :index
  end

  def destroy
    @card = Card.find(params[:name])
    redirect_to "/collection_cards"
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def search
    @cards = Card.where(name: params[:name])
    render :index
  end

end

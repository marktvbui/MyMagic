class CollectionCardsController < ApplicationController

  def index
    sort_colum = params[:sort]
    @collections = current_user.collection_cards
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @collections = CollectionCard.new
  end

  def create 
    @collections = CollectionCard.find_or_initialize_by(
                                      user_id: current_user.id,
                                      card_id: params[:card_id],
                                      image_url: params[:image_url]
                                      )
    if @collections.id
      @collections.quantity = @collections.quantity + params[:quantity].to_i
    else
      @collections.quantity = params[:quantity]
    end

    if @collections.save
      flash[:success] = "Card has been added"
      redirect_to "/collection_cards"
    else
      flash[:danger] = @collections.errors.full_messages.join("<br>").html_safe
      render :new
    end

  end

  def edit
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def update
    @collections = CollectionCard.find_by(id: params[:id])
    render :index
  end

  def destroy
    @card = Card.find(params[:name])
    redirect_to "/collection_cards"
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def search
    @search_term = params[:search]
    @collections = CollectionCard.where("card_id LIKE ?", "%#{@search_term}%")
    render :index
  end

end

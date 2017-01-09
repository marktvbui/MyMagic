class CollectionCardsController < ApplicationController

  def index
    sort_colum = params[:sort]
    @collections = CollectionCard.all.order(sort_colum)
  end

  def new
    @collections = CollectionCard.new
  end

  def create 
    @collections = CollectionCard.new(user_id: current_user,
                                      name: params[:name],
                                      mana: params[:mana],
                                      color: params[:color],
                                      rarity: params[:rarity],
                                      power: params[:power],
                                      toughness: params[:toughness],
                                      card_id: rand(50),
                                      )
    if @collections.save
      flash[:success] = "Card has been saved"
      redirect_to "/collection_cards"
    else
      flash[:danger] = @collections.errors.full_messages.join("<br>").html_safe
      render :new
    end

  end

  def show
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def edit
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def update
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def delete
    @collections = CollectionCard.find_by(id: params[:id])
  end

  def search
    @search_term = params[:search]
    @collections = CollectionCard.where("name LIKE ?", "%#{@search_term}%")
    render :index
  end

end

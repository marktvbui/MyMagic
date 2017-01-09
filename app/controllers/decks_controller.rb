class DecksController < ApplicationController

  def index
    @page_title = "Check out these Decks!"
    sort_column = params[:sort]
    @decks = Deck.all.order(sort_column)
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new{user.id :current_user, 
                      name: params[:deck_name],
                      color: params[:deck_color], 
                      description: params[:deck_description]}
    if @deck.save
      flash[:success] = "Deck has been Created!"
      redirect_to "/decks/#{@deck.id}"
    else
      flash[:danger] = @decks.errors.full_messages.join("br").html.safe
      render :new
    end
  end
  
  def show
    @deck = Deck.find_by(id: params[:id])
  end

  def edit
    @deck = Deck.find_by(id: params[:id])
  end

  def update
    @deck = Deck.find_by(id: params[:id])
    @deck.assign_attributes(name: params[:deck_name], 
                            color: params[:deck_color],
                            description: params[:deck_description]
                            )
    if @deck.save
      flash[:info] = "Deck has been updated!"
      redirect_to "/decks/"
    else 
      flash[:danger] = "Please fill out all fields"
      render :new
    end
  end

  def destroy
    @deck = Deck.find_by(id: params[:id])
    @deck.destroy
    flash[:danger] = "Useless deck has been deleted"
    redirect_to '/decks'
  end

  def search
    @search_term = params[:search]
    @decks = Deck.where("name LIKE ?", "%#{@search_term}")
    render :index
  end


end

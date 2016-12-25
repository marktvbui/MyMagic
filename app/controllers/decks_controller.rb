class DecksController < ApplicationController

  def index
    @deck = Decks.all
  end

  def new
    @deck = Decks.new
  end

  def create
    @deck = Decks.new{user.id :current_user}
    if @deck.save
      flash[:success] = "Deck has been Created!"
      render :index
    else
      render :create
    end
  end
  
  def show
    @deck = Decks.find_by(id: params[:id])
  end

  def edit
    @deck = Decks.find_by(id: params[:id])
  end

  def update
    @deck = Decks.find_by(id: params[:id])
    @deck.assign_attributes(first_name: params["first_name"],
                           last_name: params["last_name"],
                           email: params["email"])
    @deck.save
    flash[:info] = "Current deck has been updated!"
    render :show
  end

  def destroy
    @deck = Decks.find_by(id: params[:id])
    @deck.delete
    flash[:danger] = "Useless deck has been deleted"
    redirect_to '/decks'
  end


end

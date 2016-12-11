class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def create
    @user = User.new(first_name: params["first_name"],
                     last_name: params["last_name"],
                     email: params["email"],
                     admin: false)
    @user.save
    render :new
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user = User.assign_attributes(first_name: params["first_name"],
                     last_name: params["last_name"],
                     email: params["email"])
    render :edit
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect '/users'
  end

end

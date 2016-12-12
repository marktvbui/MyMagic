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
    if @user.save
      flash[:success] = "User Account Created!"
      render :index
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(first_name: params["first_name"],
                           last_name: params["last_name"],
                           email: params["email"])
    @user.save
    flash[:info] = "User info has been updated!"
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:danger] = "User has"
    redirect_to '/users'
  end

end

class UsersController < ApplicationController
  def new
    @spots = Spot.all
    @areas = Area.all
    @categories = Category.all

    @user = User.new
  end

  def create
    @spots = Spot.all
    @areas = Area.all
    @categories = Category.all
    
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
end

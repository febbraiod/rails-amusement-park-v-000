class AttractionsController < ApplicationController

  def index
    @user = current_user
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new()
  end

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.save
    redirect_to attraction_path(@attraction)
  end

  def edit
    @attraction = Attraction.find_by(id: params[:id])
  end

  def update
    @attraction = Attraction.find_by(id: params[:id])
    @attraction.update(attraction_params)
    @attraction.save
    redirect_to attraction_path(@attraction)
  end

  def show
    @user = current_user
    @attraction = Attraction.find_by(id: params[:id])
  end

  def destroy
  end

  def ride
    @attraction = Attraction.find(params[:attraction_id])
    @user = current_user
    ride = Ride.new(user_id: @user.id, attraction_id: @attraction.id)
    ride.save
    flash[:message] = ride.take_ride
    redirect_to user_path(@user)
  end

    private

    def attraction_params
      params.require(:attraction).permit(:name, :ticket, :nausea_rating, :happiness_rating, :min_height)
    end

end

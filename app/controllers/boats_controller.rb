class BoatsController < ApplicationController

  def index
      @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    boat = Boat.new(boat_params)
    boat.save
    redirect_to "/boats"
  
  end

  # def show
  #   @boat = Boat.find(params[:id])
  # end



  def boat_params
    params.require(:boat).permit(:boat_name, :container_capacity, :port_of_origin, :user_id)
  end

end

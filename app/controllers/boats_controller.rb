class BoatsController < ApplicationController

def index
	@boats = Boat.all
	current_user
end

def create
	boat = Boat.new(boat_params)
	current_user
	if boat.save
		redirect_to "/boats"
	end
end

def show
	@boats = Boat.all
	current_user
end

private
def boat_params
	params.require(:boat).permit(:boat_name, :container_capacity, :port_of_origin, :user_id)
end
end

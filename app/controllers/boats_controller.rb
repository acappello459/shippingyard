class BoatsController < ApplicationController

	def assign
		boat_id = params[:boat_id]
		job_id = params[:job_id]
		puts "this is the job id"+job_id+"this is the boat ID: "+boat_id
		job = Job.find(job_id)
		boat = Boat.find(boat_id)
		job.boats << boat
		redirect_to "/boats/"+boat_id
	end

	def index
		@boats = Boat.all
		current_user
	end

	def edit
		@boat = Boat.find(params[:id])
	end

	def update
		boat = Boat.find(params[:id])
		if boat.update(boat_params)
			redirect_to boats_path
		else
			render "boat/#{boat.id}/edit"
		end
	end 

	def create
		boat = Boat.new(boat_params)
		current_user
		if boat.save
			redirect_to "/boats"
		end
	end

	def show
		@boat = Boat.find(params[:id])
		current_user
	end

  def destroy 
    boat = Boat.find(params[:id])
      if boat.destroy
        redirect_to boats_path
    end 
  end

	private
	def boat_params
		params.require(:boat).permit(:boat_name, :container_capacity, :port_of_origin, :user_id)
	end
end

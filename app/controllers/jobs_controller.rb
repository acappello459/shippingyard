class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def create
    job = Job.new(job_params)
    if job.save
      redirect_to "/jobs"
    end
  end

  def show
    @jobs = Job.find(params[:id])
    @boats = Boat.all
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    job = Job.find(params[:id])
    if job.update(job_params)
      redirect_to jobs_path
    else
      render "/job/#{job.id}/edit"
    end
  end

  def destroy 
    job = Job.find(params[:id])
      if job.destroy
        redirect_to jobs_path
    end 
  end


  private

  def job_params
    params.require(:job).permit(:job_description, :job_origin, :job_destination, :job_cost, :containers_needed)

  end

end

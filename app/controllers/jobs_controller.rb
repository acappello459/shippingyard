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








  private
  def job_params
    params.require(:job).permit(:job_description, :job_origin, :job_destination, :job_cost, :containers_needed)

  end

end

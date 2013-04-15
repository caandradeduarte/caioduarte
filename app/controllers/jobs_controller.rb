class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    3.times { @job.thumbs.build }
    Language.all.each do |language|
      job_description = JobDescription.new
      job_description.language= language
      @job.job_descriptions.push job_description
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(params[:job])

    if @job.save
      redirect_to jobs_path, notice: 'Job was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @job = Job.find(params[:id])

    if @job.update_attributes(params[:job])
      redirect_to jobs_path, notice: 'Job was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to jobs_url
  end
end

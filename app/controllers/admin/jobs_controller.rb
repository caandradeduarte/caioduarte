class Admin::JobsController < Admin::BaseController
  before_filter :require_authentication, :only => [:create, :update, :destroy]
  
  def index
    @jobs = Kaminari.paginate_array(Job.all).page(params[:page]).per(3)
  end

  def new
    @job = Job.new
    3.times do 
      @job.thumbs.push Thumb.new
    end
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
      redirect_to admin_jobs_path, :notice => t('flash.notice.job.created')
    else
      render action: "new"
    end
  end

  def update
    @job = Job.find(params[:id])

    if @job.update_attributes(params[:job])
      redirect_to admin_jobs_path, :notice => t('flash.notice.job.updated')
    else
      render action: "edit"
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    redirect_to admin_jobs_url
  end
end

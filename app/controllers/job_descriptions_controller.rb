class JobDescriptionsController < ApplicationController
  # GET /job_descriptions
  # GET /job_descriptions.json
  def index
    @job_descriptions = JobDescription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_descriptions }
    end
  end

  # GET /job_descriptions/1
  # GET /job_descriptions/1.json
  def show
    @job_description = JobDescription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_description }
    end
  end

  # GET /job_descriptions/new
  # GET /job_descriptions/new.json
  def new
    @job_description = JobDescription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_description }
    end
  end

  # GET /job_descriptions/1/edit
  def edit
    @job_description = JobDescription.find(params[:id])
  end

  # POST /job_descriptions
  # POST /job_descriptions.json
  def create
    @job_description = JobDescription.new(params[:job_description])

    respond_to do |format|
      if @job_description.save
        format.html { redirect_to @job_description, notice: 'Job description was successfully created.' }
        format.json { render json: @job_description, status: :created, location: @job_description }
      else
        format.html { render action: "new" }
        format.json { render json: @job_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_descriptions/1
  # PUT /job_descriptions/1.json
  def update
    @job_description = JobDescription.find(params[:id])

    respond_to do |format|
      if @job_description.update_attributes(params[:job_description])
        format.html { redirect_to @job_description, notice: 'Job description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_descriptions/1
  # DELETE /job_descriptions/1.json
  def destroy
    @job_description = JobDescription.find(params[:id])
    @job_description.destroy

    respond_to do |format|
      format.html { redirect_to job_descriptions_url }
      format.json { head :no_content }
    end
  end
end
